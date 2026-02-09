#ifndef MPFSS_REG_F2K_H__
#define MPFSS_REG_F2K_H__

#include "emp-zk/emp-vole-f2k/spfss_f2k_recver.h"
#include "emp-zk/emp-vole-f2k/spfss_f2k_sender.h"
#include <emp-tool/emp-tool.h>
#include <set>

namespace emp {
template <typename IO> class MpfssRegF2k {
public:
  int party;
  int threads;
  int item_n, idx_max, m;
  int tree_height, leave_n;
  int tree_n;
  bool is_malicious;

  PRG prg;
  IO *netio;
  IO **ios;
  block secret_share_x;
  block **ggm_tree;
  block *check_chialpha_buf = nullptr, *check_VW_buf = nullptr;
  block *triple_yz = nullptr, *triple_x = nullptr;
  ThreadPool *pool;
  std::vector<uint32_t> item_pos_recver;

  MpfssRegF2k(int party, int threads, int n, int t, int log_bin_sz,
              ThreadPool *pool, IO **ios) {
    this->party = party;
    this->threads = threads;
    this->netio = ios[0];
    this->ios = ios;

    this->pool = pool;
    this->is_malicious = false;

    // make sure n = t * leave_n
    this->item_n = t;
    this->idx_max = n;
    this->tree_height = log_bin_sz + 1;
    this->leave_n = 1 << log_bin_sz;
    this->tree_n = this->item_n;

    this->ggm_tree = (block **)malloc(this->item_n * sizeof(block *));

    if (party == BOB)
      check_chialpha_buf = new block[item_n];
    check_VW_buf = new block[item_n];
  }

  ~MpfssRegF2k() {
    free(ggm_tree);
    if (check_chialpha_buf != nullptr)
      delete[] check_chialpha_buf;
    delete[] check_VW_buf;
  }

  void set_malicious() { is_malicious = true; }

  void sender_init(block delta) { secret_share_x = delta; }

  void recver_init() { item_pos_recver.resize(this->item_n); }

  void set_vec_x(block *out) {
    if (triple_x == nullptr or party == ALICE)
      error("mpfss: set value vector error");
    for (int i = 0; i < tree_n; ++i) {
      int64_t pt = (int64_t)i * leave_n + (int64_t)item_pos_recver[i];
      out[pt] = out[pt] ^ triple_x[i];
    }
  }

  // receiver
  void mpfss(OTPre<IO> *ot, block *triple_x, block *triple_yz,
             block *sparse_vector) {
    this->triple_x = triple_x;
    this->triple_yz = triple_yz;
    mpfss(ot, sparse_vector);
  }

  // sender
  void mpfss(OTPre<IO> *ot, block *triple_yz, block *sparse_vector) {
    this->triple_yz = triple_yz;
    mpfss(ot, sparse_vector);
  }

  void mpfss(OTPre<IO> *ot, block *sparse_vector) {
    vector<SpfssF2kSend<IO> *> senders;
    vector<SpfssF2kRecv<IO> *> recvers;
    vector<future<void>> fut;
    for (int i = 0; i < tree_n; ++i) {
      if (party == ALICE) {
        senders.push_back(new SpfssF2kSend<IO>(netio, tree_height));
        ot->choices_sender();
      } else {
        recvers.push_back(new SpfssF2kRecv<IO>(netio, tree_height));
        ot->choices_recver(recvers[i]->b);
        item_pos_recver[i] = recvers[i]->get_index();
      }
    }
    netio->flush();
    ot->reset();

    uint32_t width = tree_n / threads;
    uint32_t start = 0, end = width;
    for (int i = 0; i < threads - 1; ++i) {
      fut.push_back(pool->enqueue([this, start, end, width, senders, recvers,
                                   ot, sparse_vector]() {
        for (auto i = start; i < end; ++i) {
          if (party == ALICE) {
            ggm_tree[i] = sparse_vector + i * leave_n;
            senders[i]->compute(ggm_tree[i], secret_share_x, triple_yz[i]);
            senders[i]->template send<OTPre<IO>>(ot, ios[start / width], i);
            if (is_malicious)
              senders[i]->consistency_check_msg_gen(check_VW_buf[i],
                                                    ios[start / width]);
            ios[start / width]->flush();
          } else {
            recvers[i]->template recv<OTPre<IO>>(ot, ios[start / width], i);
            ggm_tree[i] = sparse_vector + i * leave_n;
            recvers[i]->compute(ggm_tree[i], triple_yz[i]);
            if (is_malicious)
              recvers[i]->consistency_check_msg_gen(
                  check_chialpha_buf[i], check_VW_buf[i], ios[start / width]);
            ios[start / width]->flush();
          }
        }
      }));
      start = end;
      end += width;
    }
    end = tree_n;
    for (auto i = start; i < end; ++i) {
      if (party == ALICE) {
        ggm_tree[i] = sparse_vector + i * leave_n;
        senders[i]->compute(ggm_tree[i], secret_share_x, triple_yz[i]);
        senders[i]->template send<OTPre<IO>>(ot, ios[threads - 1], i);
        if (is_malicious)
          senders[i]->consistency_check_msg_gen(check_VW_buf[i],
                                                ios[threads - 1]);
        ios[threads - 1]->flush();
      } else {
        recvers[i]->template recv<OTPre<IO>>(ot, ios[threads - 1], i);
        ggm_tree[i] = sparse_vector + i * leave_n;
        recvers[i]->compute(ggm_tree[i], triple_yz[i]);
        if (is_malicious)
          recvers[i]->consistency_check_msg_gen(
              check_chialpha_buf[i], check_VW_buf[i], ios[threads - 1]);
        ios[threads - 1]->flush();
      }
    }
    for (auto &f : fut)
      f.get();

    if (is_malicious) {
      if (party == ALICE)
        consistency_batch_check(triple_yz[tree_n], tree_n);
      else
        consistency_batch_check(triple_x, triple_yz[tree_n], tree_n);
    }

    for (auto p : senders)
      delete p;
    for (auto p : recvers)
      delete p;
  }

  // sender check
  void consistency_batch_check(block y, int num) {
    block x_star;
    netio->recv_data(&x_star, sizeof(block));
    block vb;
    gfmul(secret_share_x, x_star, &vb);
    vb ^= y; // y_star

    for (int i = 0; i < num; ++i)
      vb ^= check_VW_buf[i];
    Hash hash;
    block h = hash.hash_for_block(&vb, sizeof(block));
    netio->send_data(&h, sizeof(block));
    netio->flush();
  }

  // receiver check
  void consistency_batch_check(block *delta2, block z, int num) {
    block beta_mul_chialpha = zero_block, tmp;
    for (int i = 0; i < num; ++i) {
      gfmul(delta2[i], check_chialpha_buf[i], &tmp);
      beta_mul_chialpha ^= tmp;
    }
    block x_star = beta_mul_chialpha ^ delta2[num];
    netio->send_data(&x_star, sizeof(block));
    netio->flush();

    block va = z;
    for (int i = 0; i < num; ++i)
      va ^= check_VW_buf[i];

    Hash hash;
    block h = hash.hash_for_block(&va, sizeof(block));
    block r;
    netio->recv_data(&r, sizeof(block));
    if (!cmpBlock(&r, &h, 1))
      error("MPFSS batch check fails");
  }
};
} // namespace emp
#endif

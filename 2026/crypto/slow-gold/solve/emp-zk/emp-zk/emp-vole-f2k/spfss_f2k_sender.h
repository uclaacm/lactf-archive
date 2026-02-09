#ifndef SPFSS_SENDER_F2K_H__
#define SPFSS_SENDER_F2K_H__
#include <emp-ot/emp-ot.h>
#include <emp-tool/emp-tool.h>

namespace emp {
template <typename IO> class SpfssF2kSend {
public:
  block seed;
  block *ggm_tree, *m;
  block delta;
  block secret_sum;
  IO *io;
  int depth;
  int leave_n;
  PRG prg;

  SpfssF2kSend(IO *io, int depth_in) : io(io), depth(depth_in) {
    this->leave_n = 1 << (depth_in - 1);
    m = new block[(depth - 1) * 2];
    prg.random_block(&seed, 1);
  }

  ~SpfssF2kSend() { delete[] m; }

  // send the nodes by oblivious transfer
  void compute(block *ggm_tree_mem, block secret, block gamma) {
    this->delta = secret;
    this->ggm_tree = ggm_tree_mem;
    ggm_tree_gen(m, m + depth - 1, gamma);
  }

  // send the nodes by oblivious transfer
  template <typename OT> void send(OT *ot, IO *io2, int s) {
    ot->send(m, &m[depth - 1], depth - 1, io2, s);
    io2->send_data(&secret_sum, sizeof(block));
    io2->flush();
  }

  // generate GGM tree from the top
  void ggm_tree_gen(block *ot_msg_0, block *ot_msg_1, block gamma) {
    TwoKeyPRP *prp = new TwoKeyPRP(zero_block, makeBlock(0, 1));
    prp->node_expand_1to2(ggm_tree, seed);
    ot_msg_0[0] = ggm_tree[0];
    ot_msg_1[0] = ggm_tree[1];
    for (int h = 1; h < depth - 1; ++h) {
      ot_msg_0[h] = ot_msg_1[h] = zero_block;
      int sz = 1 << h;
      for (int i = sz - 2; i >= 0; i -= 2) {
        prp->node_expand_2to4(&ggm_tree[i * 2], &ggm_tree[i]);
        ot_msg_0[h] = ot_msg_0[h] ^ ggm_tree[i * 2];
        ot_msg_0[h] = ot_msg_0[h] ^ ggm_tree[i * 2 + 2];
        ot_msg_1[h] = ot_msg_1[h] ^ ggm_tree[i * 2 + 1];
        ot_msg_1[h] = ot_msg_1[h] ^ ggm_tree[i * 2 + 3];
      }
    }
    delete prp;
    secret_sum = zero_block;
    for (int i = 0; i < leave_n; ++i)
      secret_sum ^= ggm_tree[i];
    secret_sum ^= gamma;
  }

  // consistency check: Protocol PI_spsVOLE
  void consistency_check_msg_gen(block &V, IO *io2) {
    block seed = io2->get_hash_block(); // TODO Fiat-Shamir
    block *chi = new block[leave_n];
    Hash hash;
    block digest = hash.hash_for_block(&seed, sizeof(block));
    uni_hash_coeff_gen(chi, digest, leave_n);

    // V = \sum{chi_i*v_i}
    vector_inn_prdt_sum_red(&V, chi, ggm_tree, leave_n);

    delete[] chi;
  }
};
} // namespace emp
#endif

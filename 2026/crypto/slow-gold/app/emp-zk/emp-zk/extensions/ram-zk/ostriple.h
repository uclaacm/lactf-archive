#ifndef OS_TRIPLE_F2K_H__
#define OS_TRIPLE_F2K_H__

#include "emp-zk/emp-vole-f2k/svole.h"
#include "emp-zk/extensions/ram-zk/poly_prdt.h"

template <typename IO> class F2kOSTriple {
public:
  int party, threads;
  block delta;

  int authf2k_cnt = 0, check_cnt = 0;
  block *auth_buffer_val = nullptr;
  block *auth_buffer_mac = nullptr;
  block *andgate_buffer_left_val = nullptr;
  block *andgate_buffer_left_mac = nullptr;
  block *andgate_buffer_rght_val = nullptr;
  block *andgate_buffer_rght_mac = nullptr;

  GaloisFieldPacking pack;

  IO *io;
  IO **ios;
  PRG prg;
  FerretCOT<IO> *ferret = nullptr;
  SVoleF2k<IO> *svole = nullptr;
  F2kPolyPrdt<IO> *polyprdt = nullptr;
  ThreadPool *pool = nullptr;

  int64_t BUFFER_MEM_SZ = -1, BUFFER_SZ = -1;

  F2kOSTriple(int party, int threads, IO **ios, FerretCOT<IO> *ferret,
              ThreadPool *pool)
      : party(party), threads(threads), ios(ios), ferret(ferret), pool(pool) {
    if (party == BOB)
      this->delta = ferret->Delta;
    else
      this->delta = zero_block;
    io = ios[0];
    svole = new SVoleF2k<IO>(party, threads, ios, ferret);
    svole->setup(delta);
    BUFFER_MEM_SZ = svole->param.n;
    BUFFER_SZ = svole->param.buf_sz();

    auth_buffer_val = new block[BUFFER_MEM_SZ];
    auth_buffer_mac = new block[BUFFER_MEM_SZ];
    andgate_buffer_left_val = new block[BUFFER_SZ];
    andgate_buffer_left_mac = new block[BUFFER_SZ];
    andgate_buffer_rght_val = new block[BUFFER_SZ];
    andgate_buffer_rght_mac = new block[BUFFER_SZ];

    polyprdt = new F2kPolyPrdt<IO>(party, ios[0], ferret);

    pre_f2k_buffer_refill();
  }

  ~F2kOSTriple() {
    delete polyprdt;
    delete svole;
    if (andgate_buf_not_empty()) {
      andgate_correctness_check_manage();
    }
    delete[] auth_buffer_val;
    delete[] auth_buffer_mac;
    delete[] andgate_buffer_left_val;
    delete[] andgate_buffer_left_mac;
    delete[] andgate_buffer_rght_val;
    delete[] andgate_buffer_rght_mac;
  }

  uint64_t communication() {
    uint64_t res = 0;
    for (int i = 0; i < threads; ++i)
      res += ios[i]->counter;
    return res;
  }

  /* ---------------------arithmetic----------------------*/

  void compute_add_const(block &valb, block &macb, const block &vala,
                         const block &maca, const block &c) {
    if (party == ALICE) {
      valb = vala ^ c;
      macb = maca;
    } else {
      block d;
      gfmul(delta, c, &d);
      macb = maca ^ d;
    }
  }

  void compute_mul(block &valc, block &macc, block vala, block maca,
                   block valb, block macb) {
    if (check_cnt == BUFFER_SZ) {
      andgate_correctness_check_manage();
      check_cnt = 0;
    }
    if (authf2k_cnt == BUFFER_SZ) {
      pre_f2k_buffer_refill();
      authf2k_cnt = 0;
    }
    andgate_buffer_left_val[check_cnt] = vala;
    andgate_buffer_left_mac[check_cnt] = maca;
    andgate_buffer_rght_val[check_cnt] = valb;
    andgate_buffer_rght_mac[check_cnt] = macb;

    block d;
    if (party == ALICE) {
      gfmul(vala, valb, &valc);
      d = valc ^ auth_buffer_val[authf2k_cnt];
      auth_buffer_val[authf2k_cnt] = valc;
      io->send_data(&d, sizeof(block));
    } else {
      io->recv_data(&d, sizeof(block));
      gfmul(d, delta, &d);
      auth_buffer_mac[authf2k_cnt] ^= d;
    }
    macc = auth_buffer_mac[authf2k_cnt];
    check_cnt++;
    authf2k_cnt++;
  }

  void compute_mul3(block &val, block &mac, block &vala, block &maca,
                    block &valb, block &macb, block &valc, block &macc) {
    block t0, v = zero_block, m;
    uint64_t low = 0, high = 0;
    Integer lowInt, highInt;
    if (party == ALICE) {
      gfmul(vala, valb, &v);
      gfmul(valc, v, &v);
      low = LOW64(v);
      high = HIGH64(v);
    }
    lowInt = Integer(65, low, ALICE);
    highInt = Integer(65, high, ALICE);
    vector_inn_prdt_sum_red(&m, (block *)(lowInt.bits.data()), pack.base, 64);
    vector_inn_prdt_sum_red(&t0, (block *)(highInt.bits.data()), pack.base + 64,
                            64);
    m ^= t0;
    polyprdt->polyPrdt3(vala, maca, valb, macb, valc, macc, m);
    val = v;
    mac = m;
  }

  void compute_mul4(block &val, block &mac, block &vala, block &maca,
                    block &valb, block &macb, block &valc, block &macc,
                    block &vald, block &macd) {
    block t0, v = zero_block, m;
    uint64_t low = 0, high = 0;
    Integer lowInt, highInt;
    if (party == ALICE) {
      gfmul(vala, valb, &v);
      gfmul(valc, v, &v);
      gfmul(vald, v, &v);
      low = LOW64(v);
      high = HIGH64(v);
    }
    lowInt = Integer(65, low, ALICE);
    highInt = Integer(65, high, ALICE);
    vector_inn_prdt_sum_red(&m, (block *)(lowInt.bits.data()), pack.base, 64);
    vector_inn_prdt_sum_red(&t0, (block *)(highInt.bits.data()), pack.base + 64,
                            64);
    m ^= t0;
    polyprdt->polyPrdt4(vala, maca, valb, macb, valc, macc, vald, macd, m);
    val = v;
    mac = m;
  }

  void compute_mul5(block &val, block &mac, block &vala, block &maca,
                    block &valb, block &macb, block &valc, block &macc,
                    block &vald, block &macd, block &vale, block &mace) {
    block t0, v = zero_block, m;
    uint64_t low = 0, high = 0;
    Integer lowInt, highInt;
    if (party == ALICE) {
      gfmul(vala, valb, &v);
      gfmul(valc, v, &v);
      gfmul(vald, v, &v);
      gfmul(vale, v, &v);
      low = LOW64(v);
      high = HIGH64(v);
    }
    lowInt = Integer(65, low, ALICE);
    highInt = Integer(65, high, ALICE);
    vector_inn_prdt_sum_red(&m, (block *)(lowInt.bits.data()), pack.base, 64);
    vector_inn_prdt_sum_red(&t0, (block *)(highInt.bits.data()), pack.base + 64,
                            64);
    m ^= t0;
    polyprdt->polyPrdt5(vala, maca, valb, macb, valc, macc, vald, macd, vale,
                        mace, m);
    val = v;
    mac = m;
  }

  /* ---------------------check----------------------*/

  void andgate_correctness_check_manage() {
    io->flush();
    block seed = io->get_hash_block();
    vector<future<void>> fut;

    int share_seed_n = threads;
    block *share_seed = new block[share_seed_n];
    PRG(&seed).random_block(share_seed, share_seed_n);

    uint32_t task_base, leftover;
    if (check_cnt < threads) {
      task_base = 0;
      leftover = check_cnt;
    } else {
      task_base = check_cnt / threads;
      leftover = task_base + (check_cnt % task_base);
    }
    uint32_t start = 0;
    block *sum = new block[2 * threads];
    for (int i = 0; i < threads - 1; ++i) {
      fut.push_back(
          pool->enqueue([this, sum, i, start, task_base, share_seed]() {
            andgate_correctness_check(sum, i, start, task_base, share_seed[i]);
          }));
      start += task_base;
    }
    andgate_correctness_check(sum, threads - 1, start, leftover,
                              share_seed[threads - 1]);

    for (auto &f : fut)
      f.get();

    block ope_data[128];
    ferret->rcot(ope_data, 128);
    if (party == ALICE) {
      uint64_t ch_bits[2];
      for (int i = 0; i < 2; ++i) {
        if (getLSB(ope_data[64 * i + 63]))
          ch_bits[i] = 1;
        else
          ch_bits[i] = 0;
        for (int j = 62; j >= 0; --j) {
          ch_bits[i] <<= 1;
          if (getLSB(ope_data[64 * i + j]))
            ch_bits[i]++;
        }
      }
      block A_star[2];
      A_star[1] = makeBlock(ch_bits[1], ch_bits[0]);
      pack.packing(A_star, ope_data);
      for (int i = 0; i < threads; ++i) {
        A_star[0] = A_star[0] ^ sum[2 * i];
        A_star[1] = A_star[1] ^ sum[2 * i + 1];
      }
      io->send_data(A_star, 2 * sizeof(block));
    } else {
      block B_star;
      pack.packing(&B_star, ope_data);
      for (int i = 0; i < threads; ++i)
        B_star = B_star ^ sum[i];
      block A_star[2];
      io->recv_data(A_star, 2 * sizeof(block));
      block W;
      gfmul(A_star[1], this->delta, &W);
      W = W ^ A_star[0];
      if (cmpBlock(&W, &B_star, 1) != 1)
        std::cout << "check manage: fail" << std::endl;
      // CheatRecord::put("emp_zk_bool AND batch check");
    }
    io->flush();
    delete[] share_seed;
    delete[] sum;
  }

  void andgate_correctness_check(block *ret, int thr_i, uint32_t start,
                                 uint32_t task_n, block chi_seed) {
    if (task_n == 0)
      return;
    block *lval = andgate_buffer_left_val;
    block *lmac = andgate_buffer_left_mac;
    block *rval = andgate_buffer_rght_val;
    block *rmac = andgate_buffer_rght_mac;
    block *omac = auth_buffer_mac + authf2k_cnt - check_cnt;

    if (party == ALICE) {
      for (uint32_t i = start; i < start + task_n; ++i) {
        block A0, A1, tmp;
        gfmul(lmac[i], rmac[i], &A0);
        gfmul(lval[i], rmac[i], &tmp);
        gfmul(rval[i], lmac[i], &A1);
        A1 = A1 ^ tmp;
        A1 = A1 ^ omac[i];
        lval[i] = A0;
        rval[i] = A1;
      }
    } else {
      for (uint32_t i = start; i < start + task_n; ++i) {
        block B, tmp;
        gfmul(lmac[i], rmac[i], &B);
        gfmul(omac[i], delta, &tmp);
        B = B ^ tmp;
        lval[i] = B;
      }
    }

    block *chi = new block[task_n];
    uni_hash_coeff_gen(chi, chi_seed, task_n);
    if (party == ALICE) {
      vector_inn_prdt_sum_red(ret + 2 * thr_i, chi, lval + start, task_n);
      vector_inn_prdt_sum_red(ret + 2 * thr_i + 1, chi, rval + start, task_n);
    } else
      vector_inn_prdt_sum_red(ret + thr_i, chi, lval + start, task_n);

    delete[] chi;
  }

  /* ---------------------helper functions----------------------*/

  void pre_f2k_buffer_refill() {
    svole->extend_inplace(auth_buffer_val, auth_buffer_mac, BUFFER_MEM_SZ);
    authf2k_cnt = 0;
  }

  bool andgate_buf_not_empty() {
    if (check_cnt == 0)
      return false;
    else
      return true;
  }

  void sync() {
    io->flush();
    for (int i = 0; i < threads; ++i) {
      ios[i]->flush();
    }
  }
};
#endif

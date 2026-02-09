#ifndef _VOLE_TRIPLE_H_
#define _VOLE_TRIPLE_H_
#include "emp-zk/emp-vole/base_svole.h"
#include "emp-zk/emp-vole/lpn.h"
#include "emp-zk/emp-vole/mpfss_reg.h"

class PrimalLPNParameterFp61 {
public:
  int64_t n, t, k, log_bin_sz;
  int64_t n_pre, t_pre, k_pre, log_bin_sz_pre;
  int64_t n_pre0, t_pre0, k_pre0, log_bin_sz_pre0;

  PrimalLPNParameterFp61() {}
  PrimalLPNParameterFp61(int64_t n, int64_t t, int64_t k, int64_t log_bin_sz,
                         int64_t n_pre, int64_t t_pre, int64_t k_pre,
                         int64_t log_bin_sz_pre, int64_t n_pre0, int64_t t_pre0,
                         int64_t k_pre0, int64_t log_bin_sz_pre0)
      : n(n), t(t), k(k), log_bin_sz(log_bin_sz), n_pre(n_pre), t_pre(t_pre),
        k_pre(k_pre), log_bin_sz_pre(log_bin_sz_pre), n_pre0(n_pre0),
        t_pre0(t_pre0), k_pre0(k_pre0), log_bin_sz_pre0(log_bin_sz_pre0) {

    if (n != t * (1 << log_bin_sz) || n_pre != t_pre * (1 << log_bin_sz_pre) ||
        n_pre < k + t + 1)
      error("LPN parameter not matched");
  }
  int64_t buf_sz() const { return n - t - k - 1; }
};

const static PrimalLPNParameterFp61 fp_default = PrimalLPNParameterFp61(
    10168320, 4965, 158000, 11, 166400, 2600, 5060, 6, 9600, 600, 1220, 4);

template <typename IO> class VoleTriple {
public:
  IO *io;
  IO **ios;
  int party;
  int threads;
  PrimalLPNParameterFp61 param;
  int noise_type;
  int M;
  int ot_used, ot_limit;
  bool is_malicious;
  bool extend_initialized;
  bool pre_ot_inplace;
  __uint128_t *pre_yz = nullptr;
  __uint128_t *pre_x = nullptr;
  __uint128_t *vole_triples = nullptr;
  __uint128_t *vole_x = nullptr;

  BaseCot<IO> *cot;
  OTPre<IO> *pre_ot = nullptr;

  __uint128_t Delta;
  LpnFp<10> *lpn = nullptr;
  ThreadPool *pool = nullptr;
  MpfssRegFp<IO> *mpfss = nullptr;

  VoleTriple(int party, int threads, IO **ios,
             PrimalLPNParameterFp61 param = fp_default) {
    this->io = ios[0];
    this->threads = threads;
    this->party = party;
    this->ios = ios;
    this->param = param;
    this->extend_initialized = false;

    cot = new BaseCot<IO>(party, io, true);
    cot->cot_gen_pre();

    pool = new ThreadPool(threads);
  }

  ~VoleTriple() {
    if (pre_yz != nullptr)
      delete[] pre_yz;
    if (pre_x != nullptr)
      delete[] pre_x;
    if (pre_ot != nullptr)
      delete pre_ot;
    if (lpn != nullptr)
      delete lpn;
    if (pool != nullptr)
      delete pool;
    if (mpfss != nullptr)
      delete mpfss;
    if (vole_triples != nullptr)
      delete[] vole_triples;
    if (vole_x != nullptr)
      delete[] vole_x;
    if (cot != nullptr)
      delete cot;
  }

  void setup(__uint128_t delta) {
    this->Delta = delta;
    setup();
  }

  __uint128_t delta() {
    if (party == ALICE)
      return this->Delta;
    else {
      error("No delta for BOB");
      return 0;
    }
  }

  void extend_initialization() {
    lpn = new LpnFp<10>(param.n, param.k, pool, pool->size());
    mpfss = new MpfssRegFp<IO>(party, threads, param.n, param.t,
                               param.log_bin_sz, pool, ios);
    mpfss->set_malicious();

    pre_ot = new OTPre<IO>(io, mpfss->tree_height - 1, mpfss->tree_n);
    M = param.k + param.t + 1;
    ot_limit = param.n - M;
    ot_used = ot_limit;
    extend_initialized = true;
  }

  // sender extend
  void extend_send(__uint128_t *y, MpfssRegFp<IO> *mpfss, OTPre<IO> *pre_ot,
                   LpnFp<10> *lpn, __uint128_t *key) {
    mpfss->sender_init(Delta);
    mpfss->mpfss(pre_ot, key, y);
    lpn->compute_send(y, key + mpfss->tree_n + 1);
  }

  // receiver extend
  void extend_recv(__uint128_t *z, MpfssRegFp<IO> *mpfss, OTPre<IO> *pre_ot,
                   LpnFp<10> *lpn, __uint128_t *mac) {
    mpfss->recver_init();
    mpfss->mpfss(pre_ot, mac, z);
    lpn->compute_recv(z, mac + mpfss->tree_n + 1);
  }

  void extend(__uint128_t *buffer) {
    cot->cot_gen(pre_ot, pre_ot->n);
    // memset(buffer, 0, n*sizeof(__uint128_t));
    if (party == ALICE)
      extend_send(buffer, mpfss, pre_ot, lpn, pre_yz);
    else
      extend_recv(buffer, mpfss, pre_ot, lpn, pre_yz);
    memcpy(pre_yz, buffer + ot_limit, M * sizeof(__uint128_t));
  }

  void setup() {
    // initialize the main process
    ThreadPool pool_tmp(1);
    auto fut = pool_tmp.enqueue([this]() { extend_initialization(); });

    // space for pre-processing triples
    __uint128_t *pre_yz0 = new __uint128_t[param.n_pre0];
    memset(pre_yz0, 0, param.n_pre0 * sizeof(__uint128_t));

    // pre-processing tools
    LpnFp<10> lpn_pre0(param.n_pre0, param.k_pre0, pool, pool->size());
    MpfssRegFp<IO> mpfss_pre0(party, threads, param.n_pre0, param.t_pre0,
                              param.log_bin_sz_pre0, pool, ios);
    mpfss_pre0.set_malicious();
    OTPre<IO> pre_ot_ini0(ios[0], mpfss_pre0.tree_height - 1,
                          mpfss_pre0.tree_n);

    // generate tree_n*(depth-1) COTs
    int M_pre0 = pre_ot_ini0.n;
    cot->cot_gen(&pre_ot_ini0, M_pre0);

    // generate 2*tree_n+k_pre triples and extend
    Base_svole<IO> *svole0;
    int triple_n0 = 1 + mpfss_pre0.tree_n + param.k_pre0;
    if (party == ALICE) {
      __uint128_t *key = new __uint128_t[triple_n0];
      svole0 = new Base_svole<IO>(party, ios[0], Delta);
      svole0->triple_gen_send(key, triple_n0);

      extend_send(pre_yz0, &mpfss_pre0, &pre_ot_ini0, &lpn_pre0, key);
      delete[] key;
    } else {
      __uint128_t *mac = new __uint128_t[triple_n0];
      svole0 = new Base_svole<IO>(party, ios[0]);
      svole0->triple_gen_recv(mac, triple_n0);

      extend_recv(pre_yz0, &mpfss_pre0, &pre_ot_ini0, &lpn_pre0, mac);
      delete[] mac;
    }
    delete svole0;

    // space for pre-processing triples
    pre_yz = new __uint128_t[param.n_pre];
    memset(pre_yz, 0, param.n_pre * sizeof(__uint128_t));

    // pre-processing tools
    LpnFp<10> lpn_pre(param.n_pre, param.k_pre, pool, pool->size());
    MpfssRegFp<IO> mpfss_pre(party, threads, param.n_pre, param.t_pre,
                             param.log_bin_sz_pre, pool, ios);
    mpfss_pre.set_malicious();
    OTPre<IO> pre_ot_ini(ios[0], mpfss_pre.tree_height - 1, mpfss_pre.tree_n);

    // generate tree_n*(depth-1) COTs
    int M_pre = pre_ot_ini.n;
    cot->cot_gen(&pre_ot_ini, M_pre);

    // generate 2*tree_n+k_pre triples and extend
    if (party == ALICE) {
      extend_send(pre_yz, &mpfss_pre, &pre_ot_ini, &lpn_pre, pre_yz0);
    } else {
      extend_recv(pre_yz, &mpfss_pre, &pre_ot_ini, &lpn_pre, pre_yz0);
    }
    pre_ot_inplace = true;

    delete[] pre_yz0;

    fut.get();
  }

  void extend(__uint128_t *data_yz, int num) {
    if (vole_triples == nullptr) {
      vole_triples = new __uint128_t[param.n];
      // memset(vole_triples, 0, n*sizeof(__uint128_t));
    }
    if (extend_initialized == false)
      error("Run setup before extending");
    if (num <= silent_ot_left()) {
      memcpy(data_yz, vole_triples + ot_used, num * sizeof(__uint128_t));
      this->ot_used += num;
      return;
    }
    __uint128_t *pt = data_yz;
    int gened = silent_ot_left();
    if (gened > 0) {
      memcpy(pt, vole_triples + ot_used, gened * sizeof(__uint128_t));
      pt += gened;
    }
    int round_inplace = (num - gened - M) / ot_limit;
    int last_round_ot = num - gened - round_inplace * ot_limit;
    bool round_memcpy = last_round_ot > ot_limit ? true : false;
    if (round_memcpy)
      last_round_ot -= ot_limit;
    for (int i = 0; i < round_inplace; ++i) {
      extend(pt);
      ot_used = ot_limit;
      pt += ot_limit;
    }
    if (round_memcpy) {
      extend(vole_triples);
      memcpy(pt, vole_triples, ot_limit * sizeof(__uint128_t));
      ot_used = ot_limit;
      pt += ot_limit;
    }
    if (last_round_ot > 0) {
      extend(vole_triples);
      memcpy(pt, vole_triples, last_round_ot * sizeof(__uint128_t));
      ot_used = last_round_ot;
    }
  }

  uint64_t extend_inplace(__uint128_t *data_yz, int byte_space) {
    if (byte_space < param.n)
      error("space not enough");
    uint64_t tp_output_n = byte_space - M;
    if (tp_output_n % ot_limit != 0)
      error("call byte_memory_need_inplace \
				to get the correct length of memory space");
    int round = tp_output_n / ot_limit;
    __uint128_t *pt = data_yz;
    for (int i = 0; i < round; ++i) {
      extend(pt);
      pt += ot_limit;
    }
    return tp_output_n;
  }

  uint64_t byte_memory_need_inplace(uint64_t tp_need) {
    int round = (tp_need - 1) / ot_limit;
    return round * ot_limit + param.n;
  }

  int silent_ot_left() { return ot_limit - ot_used; }

  // debug function
  void check_triple(__uint128_t x, __uint128_t *y, int size) {
    if (party == ALICE) {
      io->send_data(&x, sizeof(__uint128_t));
      io->send_data(y, size * sizeof(__uint128_t));
    } else {
      __uint128_t delta;
      __uint128_t *k = new __uint128_t[size];
      io->recv_data(&delta, sizeof(__uint128_t));
      io->recv_data(k, size * sizeof(__uint128_t));
      for (int i = 0; i < size; ++i) {
        __uint128_t tmp = mod(delta * (y[i] >> 64), pr);
        tmp = mod(tmp + k[i], pr);
        if (tmp != (y[i] & 0xFFFFFFFFFFFFFFFFLL)) {
          std::cout << "triple error at index: " << i << std::endl;
          abort();
        }
      }
    }
  }
};
#endif // _ITERATIVE_COT_H_

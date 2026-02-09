#ifndef _LPN_FP_H__
#define _LPN_FP_H__

#include "emp-tool/emp-tool.h"
#include "emp-zk/emp-vole/utility.h"
namespace emp {
template <int d = 10> class LpnFp {
public:
  int party;
  int k, n;
  ThreadPool *pool;
  int threads;
  block seed;

  __uint128_t *M;
  const __uint128_t *preM, *prex;
  __uint128_t *K;
  const __uint128_t *preK;

  uint32_t k_mask;
  LpnFp(int n, int k, ThreadPool *pool, int threads, block seed = zero_block) {
    this->k = k;
    this->n = n;
    this->pool = pool;
    this->threads = threads;
    this->seed = seed;

    k_mask = 1;
    while (k_mask < (uint32_t)k) {
      k_mask <<= 1;
      k_mask = k_mask | 0x1;
    }
  }

  void add2_single(int idx1, int *idx2) {
    block Midx1 = (block)M[idx1];
    for (int j = 0; j < 5; ++j)
      Midx1 = _mm_add_epi64(Midx1, (block)preM[idx2[j]]);
    Midx1 = vec_mod(Midx1);
    for (int j = 5; j < 10; ++j)
      Midx1 = _mm_add_epi64(Midx1, (block)preM[idx2[j]]);
    M[idx1] = (__uint128_t)vec_mod(Midx1);
  }
  void add1_single(int idx1, int *idx2) {
    uint64_t Kidx1 = K[idx1];
    for (int j = 0; j < 5; ++j)
      Kidx1 = Kidx1 + preK[idx2[j]];
    Kidx1 = mod(Kidx1);
    for (int j = 5; j < 10; ++j)
      Kidx1 = Kidx1 + preK[idx2[j]];
    K[idx1] = mod(Kidx1);
  }

  void add2(int idx1, int *idx2) {
    block tmp[4];
    tmp[0] = (block)M[idx1];
    tmp[1] = (block)M[idx1 + 1];
    tmp[2] = (block)M[idx1 + 2];
    tmp[3] = (block)M[idx1 + 3];
    int *p = idx2;
    for (int j = 0; j < 5; ++j) {
      tmp[0] = _mm_add_epi64((block)tmp[0], (block)preM[*(p++)]);
      tmp[1] = _mm_add_epi64((block)tmp[1], (block)preM[*(p++)]);
      tmp[2] = _mm_add_epi64((block)tmp[2], (block)preM[*(p++)]);
      tmp[3] = _mm_add_epi64((block)tmp[3], (block)preM[*(p++)]);
    }
    tmp[0] = vec_mod(tmp[0]);
    tmp[1] = vec_mod(tmp[1]);
    tmp[2] = vec_mod(tmp[2]);
    tmp[3] = vec_mod(tmp[3]);
    for (int j = 5; j < 10; ++j) {
      tmp[0] = _mm_add_epi64((block)tmp[0], (block)preM[*(p++)]);
      tmp[1] = _mm_add_epi64((block)tmp[1], (block)preM[*(p++)]);
      tmp[2] = _mm_add_epi64((block)tmp[2], (block)preM[*(p++)]);
      tmp[3] = _mm_add_epi64((block)tmp[3], (block)preM[*(p++)]);
    }
    M[idx1] = (__uint128_t)vec_mod(tmp[0]);
    M[idx1 + 1] = (__uint128_t)vec_mod(tmp[1]);
    M[idx1 + 2] = (__uint128_t)vec_mod(tmp[2]);
    M[idx1 + 3] = (__uint128_t)vec_mod(tmp[3]);
  }

  void add1(int idx1, int *idx2) {
    uint64_t tmp[4];
    tmp[0] = 0;
    tmp[1] = 0;
    tmp[2] = 0;
    tmp[3] = 0;
    int *p = idx2;
    for (int j = 0; j < 5; ++j) {
      tmp[0] += preK[*(p++)];
      tmp[1] += preK[*(p++)];
      tmp[2] += preK[*(p++)];
      tmp[3] += preK[*(p++)];
    }
    tmp[0] = mod(tmp[0]);
    tmp[1] = mod(tmp[1]);
    tmp[2] = mod(tmp[2]);
    tmp[3] = mod(tmp[3]);
    for (int j = 5; j < 10; ++j) {
      tmp[0] += preK[*(p++)];
      tmp[1] += preK[*(p++)];
      tmp[2] += preK[*(p++)];
      tmp[3] += preK[*(p++)];
    }
    K[idx1] = mod(K[idx1] + tmp[0]);
    K[idx1 + 1] = mod(K[idx1 + 1] + tmp[1]);
    K[idx1 + 2] = mod(K[idx1 + 2] + tmp[2]);
    K[idx1 + 3] = mod(K[idx1 + 3] + tmp[3]);
  }

  void __compute4(int i, PRP *prp, std::function<void(int, int *)> add_func) {
    block tmp[10];
    for (int m = 0; m < 10; ++m)
      tmp[m] = makeBlock(i, m);
    prp->permute_block(tmp, 10);
    int *index = (int *)(tmp);
    for (int j = 0; j < 4 * d; ++j) {
      index[j] = index[j] & k_mask;
      index[j] = index[j] >= k ? index[j] - k : index[j];
    }
    add_func(i, index);
  }

  void __compute1(int i, PRP *prp, std::function<void(int, int *)> add_func) {
    block tmp[3];
    for (int m = 0; m < 3; ++m)
      tmp[m] = makeBlock(i, m);
    prp->permute_block(tmp, 3);
    uint32_t *r = (uint32_t *)(tmp);
    int index[d];
    for (int j = 0; j < d; ++j) {
      index[j] = r[j] & k_mask;
      index[j] = index[j] >= k ? index[j] - k : index[j];
    }
    add_func(i, index);
  }

  void task(int start, int end) {
    PRP prp(seed);
    int j = start;
    if (party == 1) {
      std::function<void(int, int *)> add_func1 = std::bind(
          &LpnFp::add1, this, std::placeholders::_1, std::placeholders::_2);
      std::function<void(int, int *)> add_func1s =
          std::bind(&LpnFp::add1_single, this, std::placeholders::_1,
                    std::placeholders::_2);
      for (; j < end - 4; j += 4)
        __compute4(j, &prp, add_func1);
      for (; j < end; ++j)
        __compute1(j, &prp, add_func1s);
    } else {
      std::function<void(int, int *)> add_func2 = std::bind(
          &LpnFp::add2, this, std::placeholders::_1, std::placeholders::_2);
      std::function<void(int, int *)> add_func2s =
          std::bind(&LpnFp::add2_single, this, std::placeholders::_1,
                    std::placeholders::_2);
      for (; j < end - 4; j += 4)
        __compute4(j, &prp, add_func2);
      for (; j < end; ++j)
        __compute1(j, &prp, add_func2s);
    }
  }

  void compute() {
    vector<std::future<void>> fut;
    int width = n / (threads + 1);
    for (int i = 0; i < threads; ++i) {
      int start = i * width;
      int end = min((i + 1) * width, n);
      fut.push_back(pool->enqueue([this, start, end]() { task(start, end); }));
    }
    int start = threads * width;
    int end = min((threads + 1) * width, n);
    task(start, end);

    for (auto &f : fut)
      f.get();
  }

  void compute_send(__uint128_t *K, const __uint128_t *kkK) {
    this->party = ALICE;
    this->K = K;
    this->preK = kkK;
    compute();
  }

  void compute_recv(__uint128_t *M, const __uint128_t *kkM) {
    this->party = BOB;
    this->M = M;
    this->preM = kkM;
    compute();
  }
};
} // namespace emp
#endif

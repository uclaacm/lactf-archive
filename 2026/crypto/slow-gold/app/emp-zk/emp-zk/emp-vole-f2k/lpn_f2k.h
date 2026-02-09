#ifndef _LPN_F2K_H__
#define _LPN_F2K_H__

#include "emp-tool/emp-tool.h"
namespace emp {
template <int d = 10> class LpnF2k {
public:
  int party;
  int k, n;
  ThreadPool *pool;
  int threads;
  block seed;

  block *Val, *Mac;
  const block *preV, *preM;

  uint32_t k_mask;

  LpnF2k(int n, int k, ThreadPool *pool, int threads, block seed = zero_block) {
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

  void add2(int idx1, uint32_t *idx2) {
    for (int j = 0; j < d; ++j) {
      Val[idx1] ^= preV[idx2[j]];
      Mac[idx1] ^= preM[idx2[j]];
    }
  }

  void add1(int idx1, uint32_t *idx2) {
    for (int j = 0; j < d; ++j) {
      Mac[idx1] ^= preM[idx2[j]];
    }
  }

  void __compute4(int i, PRP *prp,
                  std::function<void(int, uint32_t *)> add_func) {
    block tmp[10];
    for (int m = 0; m < 10; ++m)
      tmp[m] = makeBlock(i, m);
    prp->permute_block(tmp, 10);
    uint32_t *r = (uint32_t *)(tmp);
    for (int j = 0; j < 4 * d; ++j) {
      r[j] = r[j] & k_mask;
      r[j] = r[j] >= k ? r[j] - k : r[j];
    }
    for (int m = 0; m < 4; ++m) {
      add_func(i + m, r + m * d);
    }
  }

  void __compute1(int i, PRP *prp,
                  std::function<void(int, uint32_t *)> add_func) {
    block tmp[3];
    for (int m = 0; m < 3; ++m)
      tmp[m] = makeBlock(i, m);
    prp->permute_block(tmp, 3);
    uint32_t *r = (uint32_t *)(tmp);
    for (int j = 0; j < d; ++j) {
      r[j] = r[j] & k_mask;
      r[j] = r[j] >= k ? r[j] - k : r[j];
    }
    add_func(i, r);
  }

  void task(int start, int end) {
    PRP prp(seed);
    int j = start;
    if (party == 1) {
      std::function<void(int, uint32_t *)> add_func1 = std::bind(
          &LpnF2k::add2, this, std::placeholders::_1, std::placeholders::_2);
      for (; j < end - 4; j += 4)
        __compute4(j, &prp, add_func1);
      for (; j < end; ++j)
        __compute1(j, &prp, add_func1);
    } else {
      std::function<void(int, uint32_t *)> add_func2 = std::bind(
          &LpnF2k::add1, this, std::placeholders::_1, std::placeholders::_2);
      for (; j < end - 4; j += 4)
        __compute4(j, &prp, add_func2);
      for (; j < end; ++j)
        __compute1(j, &prp, add_func2);
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

  void compute_send(const block *preV, block *V, const block *preM, block *M) {
    this->party = ALICE;
    this->preV = preV;
    this->Val = V;
    this->preM = preM;
    this->Mac = M;
    compute();
  }

  void compute_recv(const block *preM, block *M) {
    this->party = BOB;
    this->preM = preM;
    this->Mac = M;
    compute();
  }
};
} // namespace emp
#endif

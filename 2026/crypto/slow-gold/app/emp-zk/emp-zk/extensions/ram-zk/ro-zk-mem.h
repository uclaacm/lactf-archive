#ifndef RO_ZK_RAM_H__
#define RO_ZK_RAM_H__
#include "emp-zk/extensions/ram-zk/ostriple.h"

template <typename IO> class ROZKRAM {
public:
  double check1 = 0, check2 = 0, check3 = 0;
  int party;
  int index_sz, val_sz;
  uint64_t step = 0;
  vector<uint64_t> clear_mem;
  vector<block> check_MAC;
  vector<__uint128_t> list;
  GaloisFieldPacking gp;
  IO *io;
  block Delta;
  F2kOSTriple<IO> *ostriple = nullptr;
  ROZKRAM(int _party, int index_sz, int val_sz)
      : party(_party), index_sz(index_sz), val_sz(val_sz) {
    ZKBoolCircExec<IO> *exec =
        (ZKBoolCircExec<IO> *)(CircuitExecution::circ_exec);
    io = exec->ostriple->io;
    Delta = exec->ostriple->delta;
    ostriple =
        new F2kOSTriple<IO>(party, exec->ostriple->threads, exec->ostriple->ios,
                            exec->ostriple->ferret, exec->ostriple->pool);
  }

  ~ROZKRAM() { delete ostriple; }

  void init(vector<Integer> &data) {
    uint64_t val = 0;
    block m;
    for (size_t i = 0; i < data.size(); ++i) {
      val = data[i].reveal<uint64_t>(ALICE);
      list.push_back(pack((uint64_t)i, val));
      clear_mem.push_back(val);
      pack(m, Integer(index_sz + 1, (uint64_t)i, PUBLIC), data[i]);
      check_MAC.push_back(m);
      assert(data[i].size() == val_sz);
    }
  }

  Integer read(const Integer &index) {
    auto start = clock_start();
    uint64_t clear_index = index.reveal<uint64_t>(ALICE);
    uint64_t tmp = 0;
    if (party == ALICE) {
      tmp = clear_mem[clear_index];
      list.push_back(pack(clear_index, tmp));
    } else
      list.push_back(0);
    Integer res = Integer(val_sz, tmp, ALICE);
    block m;
    pack(m, index, res);
    check_MAC.push_back(m);
    ++step;
    check1 += time_from(start);
    if (step == clear_mem.size() * 8)
      check();
    return res;
  }

  void pack(block &mac, const Integer &index, const Integer &val) {
    block res1, res2;
    vector_inn_prdt_sum_red(&res1, (block *)(val.bits.data()), gp.base, val_sz);
    vector_inn_prdt_sum_red(&res2, (block *)(index.bits.data()),
                            gp.base + val_sz, index_sz);
    mac = res1 ^ res2;
  }

  __uint128_t pack(uint64_t index, uint64_t value) {
    return (((__uint128_t)index) << val_sz) | value;
  }

  void check() {
    auto start = clock_start();
    vector<__uint128_t> sorted_list;
    sorted_list = vector<__uint128_t>(list.begin(), list.end());
    if (party == ALICE) {
      sort(sorted_list.begin(), sorted_list.end());
    }
    vector<Integer> sort_value, sort_index;
    vector<block> sorted_X, sorted_MAC;
    block m;
    __uint128_t val_mask = ((__uint128_t)1 << val_sz) - 1;
    for (size_t i = 0; i < list.size(); ++i) {
      __uint128_t item;
      if (party == ALICE)
        item = sorted_list[i];
      else
        item = 0;
      uint64_t i1 = item & val_mask;
      sort_value.push_back(Integer(val_sz, i1, ALICE));
      uint64_t i2 = LOW64(item >> val_sz);
      sort_index.push_back(Integer(index_sz + 1, i2, ALICE));
      pack(m, sort_index[i], sort_value[i]);
      sorted_MAC.push_back(m);
    }

    bool cheat = true;
    for (size_t i = 0; i < list.size() - 1; ++i) {
      Bit eq = !(sort_index[i].geq(sort_index[i + 1])) |
               (sort_index[i].equal(sort_index[i + 1]) &
                sort_value[i].equal(sort_value[i + 1]));
      bool res = eq.reveal<bool>(PUBLIC);
      cheat = cheat and res;
    }
    if (!cheat)
      error("cheat!");
    check2 += time_from(start);

    start = clock_start();
    sync_zk_bool<IO>();
    check_set_euqality(sorted_list, sorted_MAC, list, check_MAC);
    check3 += time_from(start);
    list.resize(clear_mem.size());
    check_MAC.resize(clear_mem.size());
    step = 0;
  }

  void vector_inn_prdt(block &xx, block &mm, vector<__uint128_t> &X,
                       vector<block> &MAC, block r) {
    block x, m;
    size_t i = 1;
    block tmp = (block)X[0];
    ostriple->compute_add_const(xx, mm, tmp, MAC[0], r);
    while (i < list.size()) {
      tmp = (block)X[i];
      ostriple->compute_add_const(x, m, tmp, MAC[i], r);
      ostriple->compute_mul(xx, mm, xx, mm, x, m);
      ++i;
    }
  }

  void vector_inn_prdt_bch2(block &xx, block &mm, vector<__uint128_t> &X,
                            vector<block> &MAC, block r) {
    block x[2], m[2], t[2];
    size_t i = 1;
    block tmp = (block)X[0];
    ostriple->compute_add_const(xx, mm, tmp, MAC[0], r);
    while (i < list.size() - 1) {
      for (int j = 0; j < 2; ++j) {
        t[j] = (block)X[i + j];
        ostriple->compute_add_const(x[j], m[j], t[j], MAC[i + j], r);
      }
      ostriple->compute_mul3(xx, mm, x[0], m[0], x[1], m[1], xx, mm);
      i += 2;
    }
    while (i < list.size()) {
      t[0] = (block)X[i];
      ostriple->compute_add_const(x[0], m[0], t[0], MAC[i], r);
      ostriple->compute_mul(xx, mm, xx, mm, x[0], m[0]);
      ++i;
    }
  }

  void vector_inn_prdt_bch3(block &xx, block &mm, vector<__uint128_t> &X,
                            vector<block> &MAC, block r) {
    block x[3], m[3], t[3];
    size_t i = 1;
    block tmp = (block)X[0];
    ostriple->compute_add_const(xx, mm, tmp, MAC[0], r);
    while (i < list.size() - 2) {
      for (int j = 0; j < 3; ++j) {
        t[j] = (block)X[i + j];
        ostriple->compute_add_const(x[j], m[j], t[j], MAC[i + j], r);
      }
      ostriple->compute_mul4(xx, mm, x[0], m[0], x[1], m[1], x[2], m[2], xx,
                             mm);
      i += 3;
    }
    while (i < list.size()) {
      t[0] = (block)X[i];
      ostriple->compute_add_const(x[0], m[0], t[0], MAC[i], r);
      ostriple->compute_mul(xx, mm, xx, mm, x[0], m[0]);
      ++i;
    }
  }

  void vector_inn_prdt_bch4(block &xx, block &mm, vector<__uint128_t> &X,
                            vector<block> &MAC, block r) {
    block x[4], m[4], t[4];
    size_t i = 1;
    block tmp = (block)X[0];
    ostriple->compute_add_const(xx, mm, tmp, MAC[0], r);
    while (i < list.size() - 3) {
      for (int j = 0; j < 4; ++j) {
        t[j] = (block)X[i + j];
        ostriple->compute_add_const(x[j], m[j], t[j], MAC[i + j], r);
      }
      ostriple->compute_mul5(xx, mm, x[0], m[0], x[1], m[1], x[2], m[2], x[3],
                             m[3], xx, mm);
      i += 4;
    }
    while (i < list.size()) {
      t[0] = (block)X[i];
      ostriple->compute_add_const(x[0], m[0], t[0], MAC[i], r);
      ostriple->compute_mul(xx, mm, xx, mm, x[0], m[0]);
      ++i;
    }
  }

  // mult batch 4
  void check_set_euqality(vector<__uint128_t> &sorted_X,
                          vector<block> &sorted_MAC,
                          vector<__uint128_t> &check_X,
                          vector<block> &check_MAC) {
    block r, val[2], mac[2];
    r = io->get_hash_block();
    vector_inn_prdt_bch4(val[0], mac[0], sorted_X, sorted_MAC, r);
    vector_inn_prdt_bch4(val[1], mac[1], check_X, check_MAC, r);

    // TODO comparison
    if (party == ALICE) {
      io->send_data(mac, 2 * sizeof(block));
      io->flush();
    } else {
      block macrecv[2];
      io->recv_data(macrecv, 2 * sizeof(block));
      mac[0] ^= macrecv[0];
      mac[1] ^= macrecv[1];
      if (memcmp(mac, mac + 1, 16) != 0) {
        error("check set equality failed!\n");
      }
    }
  }

  void check_MAC_valid(block X, block MAC) {
    if (party == ALICE) {
      io->send_data(&X, 16);
      io->send_data(&MAC, 16);
    } else {
      block M = zero_block, x = zero_block;
      io->recv_data(&x, 16);
      io->recv_data(&M, 16);
      gfmul(x, Delta, &x);
      x = x ^ MAC;
      if (memcmp(&x, &M, 16) != 0) {
        error("check_MAC failed!\n");
      }
    }
  }
};
#endif // RO_ZK_RAM_H__

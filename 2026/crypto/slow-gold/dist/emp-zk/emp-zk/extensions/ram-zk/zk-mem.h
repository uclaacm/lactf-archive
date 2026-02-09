#ifndef ZK_RAM_H__
#define ZK_RAM_H__
#include "emp-zk/extensions/ram-zk/ostriple.h"

template <typename IO> class ZKRAM {
public:
  uint64_t capacity = 1, step = 0;
  vector<uint64_t> mem;
  vector<block> check_MAC;
  vector<__uint128_t> list;
  int party;
  int index_sz, step_sz, val_sz;
  IO *io;
  block Delta;
  GaloisFieldPacking gfp;
  F2kOSTriple<IO> *ostriple = nullptr;
  double online = 0, check1 = 0, check2 = 0;
  ZKRAM(int _party, int index_sz, int step_sz, int val_sz)
      : party(_party), index_sz(index_sz), step_sz(step_sz), val_sz(val_sz) {
    capacity = (capacity << index_sz);
    mem.resize(capacity);
    ZKBoolCircExec<IO> *exec =
        (ZKBoolCircExec<IO> *)(CircuitExecution::circ_exec);
    io = exec->ostriple->io;
    Delta = exec->ostriple->delta;
    ostriple =
        new F2kOSTriple<IO>(party, exec->ostriple->threads, exec->ostriple->ios,
                            exec->ostriple->ferret, exec->ostriple->pool);
  }

  ~ZKRAM() { delete ostriple; }

  // can be packed in either order, return extension value and its mac
  void pack(block &mac, const Integer &index, const Integer &val,
            const Integer &step, const Bit &op) {
    block res, res1;
    vector_inn_prdt_sum_red(&res, (block *)(val.bits.data()), gfp.base, val_sz);
    gfmul(op.bit, gfp.base[val_sz], &res1);
    res = res ^ res1;
    vector_inn_prdt_sum_red(&res1, (block *)(step.bits.data()),
                            gfp.base + val_sz + 1, step_sz);
    res = res ^ res1;
    vector_inn_prdt_sum_red(&res1, (block *)(index.bits.data()),
                            gfp.base + val_sz + 1 + step_sz, index_sz);
    res = res ^ res1;
    mac = res;
  }

  // index || step || op || value
  __uint128_t pack(uint64_t index, uint64_t value, uint64_t step, uint64_t op) {
    __uint128_t res = (index << (step_sz + 1)) | (step << 1) | (op & 0x1);
    res <<= val_sz;
    res |= value;
    return res;
  }

  Integer access(const Bit &op, const Integer &index, const Integer &value) {
    auto t1 = clock_start();
    uint64_t clear_index = index.reveal<uint64_t>(ALICE);
    bool clear_op = op.reveal<bool>(ALICE);
    uint64_t clear_val = 0;
    Integer prv_val;
    block m;
    if (party == ALICE) {
      if (clear_op == 0) {
        clear_val = mem[clear_index];
      } else {
        clear_val = value.reveal<uint64_t>(ALICE);
        mem[clear_index] = clear_val;
      }
      prv_val = Integer(val_sz, clear_val, ALICE);
      list.push_back(pack(clear_index, clear_val, step, clear_op));
    } else
      prv_val = Integer(val_sz, clear_val, ALICE);
    pack(m, index, prv_val, Integer(step_sz, step, PUBLIC), op);
    check_MAC.push_back(m);
    step++;
    online += time_from(t1);
    return prv_val;
  }

  Integer read(const Integer &index) {
    auto t1 = clock_start();
    uint64_t clear_index = index.reveal<uint64_t>(ALICE);
    uint64_t tmp = 0;
    if (party == ALICE) {
      tmp = mem[clear_index];
      list.push_back(pack(clear_index, tmp, step, 0));
    }
    Integer res = Integer(val_sz, tmp, ALICE);
    block m;
    pack(m, index, res, Integer(step_sz, step, PUBLIC), Bit(false, PUBLIC));
    check_MAC.push_back(m);
    step++;
    online += time_from(t1);
    return res;
  }

  void write(const Integer &index, const Integer &value) {
    auto t1 = clock_start();
    uint64_t clear_index = index.reveal<uint64_t>(ALICE);
    uint64_t clear_value = value.reveal<uint64_t>(ALICE);
    if (party == ALICE) {
      mem[clear_index] = clear_value;
      list.push_back(pack(clear_index, clear_value, step, 1));
    }
    block m;
    pack(m, index, value, Integer(step_sz, step, PUBLIC), Bit(true, PUBLIC));
    check_MAC.push_back(m);
    step++;
    online += time_from(t1);
    return;
  }
  void refresh() {
    if (step + capacity == (1 << (step_sz - 1))) {
      vector<Integer> tmp;
      for (size_t i = 0; i < capacity; ++i) {
        auto val = read(Integer(index_sz, i, PUBLIC));
        tmp.push_back(val);
      }
      check();
      for (size_t i = 0; i < capacity; ++i) {
        write(Integer(index_sz, i, PUBLIC), tmp[i]);
      }
    }
  }

  void check() {
    auto t1 = clock_start();
    vector<__uint128_t> sorted_list;
    if (party == ALICE) {
      sorted_list = vector<__uint128_t>(list.begin(), list.end());
      sort(sorted_list.begin(), sorted_list.end());
    }
    vector<Integer> sort_value, sort_index, sort_step;
    vector<Bit> sort_op;

    __uint128_t val_mask = ((__uint128_t)1 << val_sz) - 1;
    uint64_t idx_mask = ((uint64_t)1 << index_sz) - 1;
    __uint128_t step_mask = ((__uint128_t)1 << step_sz) - 1;
    for (size_t i = 0; i < step; ++i) {
      __uint128_t val = 0;
      if (party == ALICE)
        val = sorted_list[i];
      sort_value.push_back(Integer(val_sz, val & val_mask, ALICE));
      val = val >> val_sz;
      uint64_t high = val & 0xFFFFFFFFFFFFFFFFLL;
      sort_op.push_back(Bit(high & 0x1, ALICE));
      high = high >> 1;
      sort_step.push_back(Integer(step_sz, high & step_mask, ALICE));
      val = val >> (step_sz + 1);
      sort_index.push_back(Integer(index_sz + 1, val & idx_mask, ALICE));
    }

    Bit condition = Bit(true, PUBLIC);
    for (size_t i = 1; i < step; ++i) {
      auto eq = sort_index[i - 1] == sort_index[i];
      condition = condition & ((sort_index[i - 1] < sort_index[i]) |
                               (eq & (sort_step[i - 1] < sort_step[i])));
      condition =
          condition & ((sort_value[i - 1] == sort_value[i]) | sort_op[i]);
      condition = condition & (eq | sort_op[i]);
    }
    if (!condition.reveal())
      cout << "wrong!!\n";

    sync_zk_bool<IO>();
    vector<block> sorted_MAC;
    // Now check that sort_value, sort_index, sort_step, sort_op is consistent
    // with the other set of values
    for (size_t i = 0; i < step; ++i) {
      block m;
      pack(m, sort_index[i], sort_value[i], sort_step[i], sort_op[i]);
      sorted_MAC.push_back(m);
    }
    check1 += time_from(t1);
    check_set_euqality((block *)sorted_list.data(), sorted_MAC,
                       (block *)list.data(), check_MAC);
    mem.clear();
    check_MAC.clear();
    list.clear();
    step = 0;
  }

  void inn_prdt(block &val, block &mac, block *X, vector<block> &MAC, block r) {
    block x, m;
    size_t i = 1;
    if (party == ALICE) {
      ostriple->compute_add_const(val, mac, X[0], MAC[0], r);
      while (i < step) {
        ostriple->compute_add_const(x, m, X[i], MAC[i], r);
        ostriple->compute_mul(val, mac, val, mac, x, m);
        ++i;
      }
    } else {
      block dummy = zero_block;
      ostriple->compute_add_const(val, mac, dummy, MAC[0], r);
      while (i < step) {
        ostriple->compute_add_const(x, m, dummy, MAC[i], r);
        ostriple->compute_mul(val, mac, val, mac, x, m);
        ++i;
      }
    }
  }

  void inn_prdt_bch2(block &val, block &mac, block *X, vector<block> &MAC,
                     block r) {
    block x[2], m[2];
    size_t i = 1;
    if (party == ALICE) {
      ostriple->compute_add_const(val, mac, X[0], MAC[0], r);
      while (i < step - 1) {
        ostriple->compute_add_const(x[0], m[0], X[i], MAC[i], r);
        ostriple->compute_add_const(x[1], m[1], X[i + 1], MAC[i + 1], r);
        ostriple->compute_mul3(val, mac, val, mac, x[0], m[0], x[1], m[1]);
        i += 2;
      }
      while (i < step) {
        ostriple->compute_add_const(x[0], m[0], X[i], MAC[i], r);
        ostriple->compute_mul(val, mac, val, mac, x[0], m[0]);
        ++i;
      }
    } else {
      block dummy = zero_block;
      ostriple->compute_add_const(val, mac, dummy, MAC[0], r);
      while (i < step - 1) {
        ostriple->compute_add_const(x[0], m[0], dummy, MAC[i], r);
        ostriple->compute_add_const(x[1], m[1], dummy, MAC[i + 1], r);
        ostriple->compute_mul3(val, mac, val, mac, x[0], m[0], x[1], m[1]);
        i += 2;
      }
      while (i < step) {
        ostriple->compute_add_const(x[0], m[0], dummy, MAC[i], r);
        ostriple->compute_mul(val, mac, val, mac, x[0], m[0]);
        ++i;
      }
    }
  }

  void inn_prdt_bch3(block &val, block &mac, block *X, vector<block> &MAC,
                     block r) {
    block x[3], m[3];
    size_t i = 1;
    if (party == ALICE) {
      ostriple->compute_add_const(val, mac, X[0], MAC[0], r);
      while (i < step - 2) {
        for (int j = 0; j < 3; ++j)
          ostriple->compute_add_const(x[j], m[j], X[i + j], MAC[i + j], r);
        ostriple->compute_mul4(val, mac, val, mac, x[0], m[0], x[1], m[1], x[2],
                               m[2]);
        i += 3;
      }
      while (i < step) {
        ostriple->compute_add_const(x[0], m[0], X[i], MAC[i], r);
        ostriple->compute_mul(val, mac, val, mac, x[0], m[0]);
        ++i;
      }
    } else {
      block dummy = zero_block;
      ostriple->compute_add_const(val, mac, dummy, MAC[0], r);
      while (i < step - 2) {
        for (int j = 0; j < 3; ++j)
          ostriple->compute_add_const(x[j], m[j], dummy, MAC[i + j], r);
        ostriple->compute_mul4(val, mac, val, mac, x[0], m[0], x[1], m[1], x[2],
                               m[2]);
        i += 3;
      }
      while (i < step) {
        ostriple->compute_add_const(x[0], m[0], dummy, MAC[i], r);
        ostriple->compute_mul(val, mac, val, mac, x[0], m[0]);
        ++i;
      }
    }
  }

  void inn_prdt_bch4(block &val, block &mac, block *X, vector<block> &MAC,
                     block r) {
    block x[4], m[4];
    size_t i = 1;
    if (party == ALICE) {
      ostriple->compute_add_const(val, mac, X[0], MAC[0], r);
      while (i < step - 3) {
        for (int j = 0; j < 4; ++j)
          ostriple->compute_add_const(x[j], m[j], X[i + j], MAC[i + j], r);
        ostriple->compute_mul5(val, mac, val, mac, x[0], m[0], x[1], m[1], x[2],
                               m[2], x[3], m[3]);
        i += 4;
      }
      while (i < step) {
        ostriple->compute_add_const(x[0], m[0], X[i], MAC[i], r);
        ostriple->compute_mul(val, mac, val, mac, x[0], m[0]);
        ++i;
      }
    } else {
      block dummy = zero_block;
      ostriple->compute_add_const(val, mac, dummy, MAC[0], r);
      while (i < step - 3) {
        for (int j = 0; j < 4; ++j)
          ostriple->compute_add_const(x[j], m[j], dummy, MAC[i + j], r);
        ostriple->compute_mul5(val, mac, val, mac, x[0], m[0], x[1], m[1], x[2],
                               m[2], x[3], m[3]);
        i += 4;
      }
      while (i < step) {
        ostriple->compute_add_const(x[0], m[0], dummy, MAC[i], r);
        ostriple->compute_mul(val, mac, val, mac, x[0], m[0]);
        ++i;
      }
    }
  }

  void check_set_euqality(block *sorted_X, vector<block> &sorted_MAC,
                          block *check_X, vector<block> &check_MAC) {
    auto t1 = clock_start();
    block r, val[2], mac[2];
    r = io->get_hash_block();
    inn_prdt_bch4(val[0], mac[0], sorted_X, sorted_MAC, r);
    inn_prdt_bch4(val[1], mac[1], check_X, check_MAC, r);

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
    check2 += time_from(t1);
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
#endif // ZK_RAM_H__

#ifndef ZK_RAM_EXT_H__
#define ZK_RAM_EXT_H__
#include "emp-zk/extensions/ram-zk/ostriple.h"

template <typename IO> class ZkRamExt {
public:
  const std::size_t index_bit_sz = 32;
  const std::size_t step_bit_sz = 31;
  const std::size_t val_bit_sz = 64;
  uint64_t capacity = 1, step = 0;
  vector<vector<uint64_t>> mem;
  vector<vector<block>> check_MAC;
  vector<vector<__uint128_t>> list;
  int party;
  int index_sz, step_sz;
  std::size_t val_sz, val_uint64_sz;
  IO *io;
  block Delta;
  GaloisFieldPacking gfp;
  F2kOSTriple<IO> *ostriple = nullptr;
  // double online = 0, check1 = 0, check2 = 0;
  ZkRamExt(int _party, int _index_sz, int _step_sz, std::size_t _val_sz)
      : party(_party), index_sz(_index_sz), step_sz(_step_sz), val_sz(_val_sz) {
    /*if(_val_sz % 64 != 0) {
        throw invalid_argument("input size in bytes should be divided by 8");
    }*/
    capacity = (capacity << index_sz);
    val_uint64_sz = (val_sz + 63) / 64;
    if (_party == ALICE)
      mem.resize(capacity);
    ZKBoolCircExec<IO> *exec =
        (ZKBoolCircExec<IO> *)(CircuitExecution::circ_exec);
    io = exec->ostriple->io;
    Delta = exec->ostriple->delta;
    ostriple =
        new F2kOSTriple<IO>(party, exec->ostriple->threads, exec->ostriple->ios,
                            exec->ostriple->ferret, exec->ostriple->pool);
  }

  ~ZkRamExt() { delete ostriple; }

  // pack committed F_2 values into F_{2^128} values
  // ((index, step, op, val[0]), (val[1], val[2]), ...)
  void pack(vector<block> &mac, const Integer &index,
            const vector<Integer> &val, const Integer &step, const Bit &op) {
    mac.resize(val.size() / 2 + 1);
    bool is_dummy = ((val.size() & 0x1) == 0x1) ? false : true;
    block res1, res2;
    vector_inn_prdt_sum_red(&res1, (block *)(val[0].bits.data()), gfp.base,
                            val[0].bits.size());
    gfmul(op.bit, gfp.base[val_bit_sz], &res2);
    res1 = res1 ^ res2;
    vector_inn_prdt_sum_red(&res2, (block *)(step.bits.data()),
                            gfp.base + val_bit_sz + 1, step.bits.size());
    res1 = res1 ^ res2;
    vector_inn_prdt_sum_red(&res2, (block *)(index.bits.data()),
                            gfp.base + val_bit_sz + 1 + step_bit_sz,
                            index.bits.size());
    mac[0] = res1 ^ res2;
    std::size_t i = 1, j = 1;
    for (; i < mac.size() - 1; ++i, j += 2) {
      vector_inn_prdt_sum_red(&res1, (block *)(val[j].bits.data()),
                              gfp.base + val_bit_sz, val[j].bits.size());
      vector_inn_prdt_sum_red(&res2, (block *)(val[j + 1].bits.data()),
                              gfp.base, val[j + 1].bits.size());
      mac[i] = res1 ^ res2;
    }
    if (i < mac.size()) {
      res2 = zero_block;
      vector_inn_prdt_sum_red(&res1, (block *)(val[j].bits.data()),
                              gfp.base + val_bit_sz, val[j].bits.size());
      if (!is_dummy)
        vector_inn_prdt_sum_red(&res2, (block *)(val[j + 1].bits.data()),
                                gfp.base, val[j + 1].bits.size());
      mac[i] = res1 ^ res2;
    }
  }

  // index || step || op || value
  void pack(vector<__uint128_t> &packed_row, const uint64_t index,
            const vector<uint64_t> &value, const uint64_t step,
            const uint64_t op) {
    packed_row.resize(value.size() / 2 + 1);
    bool is_dummy = ((value.size() & 0x1) == 0x1) ? false : true;
    __uint128_t res = (index << (step_bit_sz + 1)) | (step << 1) | (op & 0x1);
    res <<= val_bit_sz;
    res |= value[0];
    packed_row[0] = res;
    std::size_t i = 1, j = 1;
    for (; i < packed_row.size() - 1; ++i, j += 2) {
      res = (__uint128_t)value[j];
      res <<= val_bit_sz;
      res |= value[j + 1];
      packed_row[i] = res;
    }
    if (i < packed_row.size()) {
      res = (__uint128_t)value[j];
      res <<= val_bit_sz;
      if (!is_dummy)
        res |= value[j + 1];
      packed_row[i] = res;
    }
  }

  void read(vector<Integer> &val, const Integer &index) {
    // auto t1 = clock_start();
    uint64_t clear_index = index.reveal<uint64_t>(ALICE);
    vector<uint64_t> val_in_mem;
    val.resize(val_uint64_sz);
    if (party == ALICE) {
      val_in_mem = mem[clear_index];
      vector<__uint128_t> packed_row;
      pack(packed_row, clear_index, val_in_mem, step, 0);
      list.push_back(packed_row);
      for (std::size_t i = 0; i < val_uint64_sz; ++i) {
        val[i] = Integer(val_bit_sz, val_in_mem[i], ALICE);
      }
    } else {
      for (std::size_t i = 0; i < val_uint64_sz; ++i) {
        val[i] = Integer(val_bit_sz, (uint64_t)0, ALICE);
      }
    }
    vector<block> m;
    pack(m, index, val, Integer(step_sz, step, PUBLIC), Bit(false, PUBLIC));
    check_MAC.push_back(m);
    step++;
    // online += time_from(t1);
  }

  void write(const vector<Integer> &value, const Integer &index) {
    // auto t1 = clock_start();
    uint64_t clear_index = index.reveal<uint64_t>(ALICE);
    vector<uint64_t> clear_value(val_uint64_sz);
    for (std::size_t i = 0; i < val_uint64_sz; ++i) {
      clear_value[i] = value[i].reveal<uint64_t>(ALICE);
    }
    if (party == ALICE) {
      mem[clear_index] = clear_value;
      vector<__uint128_t> packed_row;
      pack(packed_row, clear_index, clear_value, step, 1);
      list.push_back(packed_row);
    }
    vector<block> m;
    pack(m, index, value, Integer(step_sz, step, PUBLIC), Bit(true, PUBLIC));
    check_MAC.push_back(m);
    step++;
    // online += time_from(t1);
  }

  void refresh() {
    if (step + capacity == (1 << (step_sz - 1))) {
      vector<vector<Integer>> save_mem(capacity);
      for (size_t i = 0; i < capacity; ++i) {
        read(save_mem[i], Integer(index_sz, i, PUBLIC));
      }
      check();
      for (size_t i = 0; i < capacity; ++i) {
        write(save_mem[i], Integer(index_sz, i, PUBLIC));
      }
    }
  }

  void check() {
    // auto t1 = clock_start();
    vector<vector<__uint128_t>> sorted_list;
    if (party == ALICE) {
      sorted_list = vector<vector<__uint128_t>>(list.begin(), list.end());

      struct {
        // TODO try reference
        bool operator()(vector<__uint128_t> a, vector<__uint128_t> b) const {
          if (a[0] < b[0]) {
            return true;
          } else
            return false;
        }
      } CustomLess;
      sort(sorted_list.begin(), sorted_list.end(), CustomLess);
    }
    vector<vector<Integer>> sort_value(step);
    vector<Integer> sort_index(step), sort_step(step);
    vector<Bit> sort_op(step);

    const uint64_t block_sz = (val_uint64_sz + 2) / 2;
    const uint64_t idx_mask = ((uint64_t)1 << index_sz) - 1;
    const uint64_t step_mask = ((uint64_t)1 << step_sz) - 1;
    bool is_dummy = false;
    if (party == ALICE) {
      is_dummy = ((val_uint64_sz & 0x1) == 0x1) ? false : true;
    }
    for (size_t i = 0; i < step; ++i) {
      uint64_t high = 0;
      sort_value[i].resize(val_uint64_sz);
      if (party == ALICE) {
        sort_value[i][0] =
            Integer(val_bit_sz, (uint64_t)sorted_list[i][0], ALICE);
        std::size_t j = 1;
        while (j < val_uint64_sz - 2) {
          sort_value[i][j] = Integer(
              val_bit_sz, (uint64_t)(sorted_list[i][(j + 1) / 2] >> val_bit_sz),
              ALICE);
          sort_value[i][j + 1] =
              Integer(val_bit_sz, (uint64_t)sorted_list[i][(j + 1) / 2], ALICE);
          j += 2;
        }
        sort_value[i][j] = Integer(
            val_bit_sz, (uint64_t)(sorted_list[i][(j + 1) / 2] >> val_bit_sz),
            ALICE);
        if (!is_dummy)
          sort_value[i][j + 1] =
              Integer(val_bit_sz, (uint64_t)sorted_list[i][(j + 1) / 2], ALICE);

        high = (uint64_t)(sorted_list[i][0] >> val_bit_sz);
      } else {
        for (size_t j = 0; j < val_uint64_sz; ++j) {
          sort_value[i][j] = Integer(val_bit_sz, (uint64_t)0, ALICE);
        }
      }

      sort_op[i] = Bit(high & 0x1, ALICE);
      high = high >> 1;
      sort_step[i] = Integer(step_sz, high & step_mask, ALICE);
      high = high >> step_bit_sz;
      sort_index[i] = Integer(index_sz, high & idx_mask, ALICE);
    }

    // (i1 != i2) | ((i1 == i2) & (s1 < s2) & ((!o2 & (v1 == v2) | o2)))
    Bit condition = Bit(true, PUBLIC);
    for (size_t i = 1; i < step; ++i) {
      Bit index_neq = sort_index[i - 1] != sort_index[i];
      Bit step_less = sort_step[i - 1] < sort_step[i];
      Bit value_eq = sort_value[i - 1][0] == sort_value[i][0];
      for (size_t j = 1; j < val_uint64_sz; ++j) {
        value_eq = value_eq & (sort_value[i - 1][j] == sort_value[i][j]);
      }
      condition =
          condition & (index_neq | (!index_neq & step_less &
                                    ((!sort_op[i] & value_eq) | sort_op[i])));
      /*auto neq = sort_index[i-1] != sort_index[i];
      condition = condition & (sort_step[i-1] < sort_step[i] | neq); // neq why?
      condition = condition & (sort_value[i-1] == sort_value[i] | neq |
      sort_op[i]);*/
    }
    if (!condition.reveal()) {
      throw invalid_argument("zk ram ext check error\n");
    }

    sync_zk_bool<IO>();
    vector<vector<block>> sorted_MAC(step);
    // Now check that sort_value, sort_index, sort_step, sort_op is consistent
    // with the other set of values
    for (size_t i = 0; i < step; ++i) {
      pack(sorted_MAC[i], sort_index[i], sort_value[i], sort_step[i],
           sort_op[i]);
    }
    // check1 += time_from(t1);

    // compress
    block seed = io->get_hash_block();
    vector<block> coefficient(block_sz);
    PRG prg(&seed);
    prg.random_block(coefficient.data(), (int)block_sz);

    vector<block> compressed_origin_list, compressed_origin_mac;
    vector<block> compressed_sorted_list, compressed_sorted_mac;
    compress_rows(compressed_origin_list, compressed_origin_mac, coefficient,
                  list, check_MAC, step, block_sz);
    compress_rows(compressed_sorted_list, compressed_sorted_mac, coefficient,
                  sorted_list, sorted_MAC, step, block_sz);
    check_set_equality(compressed_sorted_list, compressed_sorted_mac,
                       compressed_origin_list, compressed_origin_mac);
    mem.clear();
    check_MAC.clear();
    list.clear();
    step = 0;
  }

  void compress_rows(vector<block> &list_compressed,
                     vector<block> &mac_compressed,
                     const vector<block> &coefficient,
                     const vector<vector<__uint128_t>> &list,
                     const vector<vector<block>> &mac, uint64_t dim1,
                     uint64_t dim2) {
    list_compressed.resize(dim1);
    mac_compressed.resize(dim1);
    for (std::size_t i = 0; i < dim1; ++i) {
      block data = zero_block, _mac = zero_block;
      for (std::size_t j = 0; j < dim2; ++j) {
        block tmp1 = zero_block, tmp2 = zero_block;
        if (party == ALICE)
          gfmul(coefficient[j], (block)list[i][j], &tmp1);
        gfmul(coefficient[j], mac[i][j], &tmp2);
        data ^= tmp1;
        _mac ^= tmp2;
      }
      list_compressed[i] = data;
      mac_compressed[i] = _mac;
    }
  }

  void inn_prdt_bch4(block &val, block &mac, vector<block> &X,
                     vector<block> &MAC, block r) {
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

  void check_set_equality(vector<block> &sorted_X, vector<block> &sorted_MAC,
                          vector<block> &check_X, vector<block> &check_MAC) {
    // auto t1 = clock_start();
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
    // check2 += time_from(t1);
  }
};
#endif // ZK_RAM_EXT_H__

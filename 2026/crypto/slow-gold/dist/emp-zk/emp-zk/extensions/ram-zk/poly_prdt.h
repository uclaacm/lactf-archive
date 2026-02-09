#ifndef F2K_POLY_PRDT_H__
#define F2K_POLY_PRDT_H__

#include "emp-zk/emp-vole-f2k/svole.h"
#include "emp-zk/extensions/ram-zk/gfmul.h"

template <typename IO> class F2kPolyPrdt {
public:
  int party;
  IO *io;
  block delta[4];
  int buffer_sz = 1 << 20;
  block *buffer0 = nullptr;
  block *buffer1 = nullptr;
  block *buffer2 = nullptr;
  block *buffer3 = nullptr;
  block *buffer4 = nullptr;
  FerretCOT<IO> *ferret = nullptr;
  int num;

  F2kPolyPrdt(int party, IO *io, FerretCOT<IO> *ferret)
      : party(party), io(io), ferret(ferret) {
    if (party == ALICE) {
      buffer0 = new block[buffer_sz];
      buffer1 = new block[buffer_sz];
      buffer2 = new block[buffer_sz];
      buffer3 = new block[buffer_sz];
      buffer4 = new block[buffer_sz];
    } else {
      buffer0 = new block[buffer_sz];
      delta[0] = ferret->Delta;
      gfmul(delta[0], delta[0], delta + 1);
      gfmul(delta[1], delta[0], delta + 2);
      gfmul(delta[2], delta[0], delta + 3);
    }
    num = 0;
  }

  ~F2kPolyPrdt() {
    batch_check();
    if (buffer0 != nullptr)
      delete[] buffer0;
    if (buffer1 != nullptr)
      delete[] buffer1;
    if (buffer2 != nullptr)
      delete[] buffer2;
    if (buffer3 != nullptr)
      delete[] buffer3;
    if (buffer4 != nullptr)
      delete[] buffer4;
  }

  void batch_check() {
    if (num == 0)
      return;
    io->flush();
    block *chi = new block[num];
    block check_sum[5];
    if (party == ALICE) {
      block seed = io->get_hash_block();
      uni_hash_coeff_gen(chi, seed, num);

      vector_inn_prdt_sum_red(check_sum, chi, buffer0, num);
      vector_inn_prdt_sum_red(check_sum + 1, chi, buffer1, num);
      vector_inn_prdt_sum_red(check_sum + 2, chi, buffer2, num);
      vector_inn_prdt_sum_red(check_sum + 3, chi, buffer3, num);
      vector_inn_prdt_sum_red(check_sum + 4, chi, buffer4, num);

      // TODO mask
      //
      io->send_data(check_sum, 5 * sizeof(block));
      io->flush();
    } else {
      block seed = io->get_hash_block();
      uni_hash_coeff_gen(chi, seed, num);

      block B;
      vector_inn_prdt_sum_red(&B, chi, buffer0, num);

      // TODO mask
      //
      io->recv_data(check_sum, 5 * sizeof(block));

      block t[4];
      gfmul_1<4>(check_sum + 1, delta, t);
      check_sum[0] ^= (t[0] ^ t[1] ^ t[2] ^ t[3]);
      if (memcmp(&B, check_sum, 16) != 0)
        error("product by polynomial fails");
    }
    num = 0;
    delete[] chi;
  }

  inline void polyPrdt3(block &x1, block &m1, block &x2, block &m2, block &x3,
                        block &m3, block &m4) {
    if (num >= buffer_sz)
      batch_check();

    if (party == ALICE) {
      block a[5], b[5], c[5];

      a[0] = a[1] = m1;
      a[2] = m2;
      a[3] = x1;
      b[0] = m2;
      b[1] = b[3] = x2;
      b[2] = x1;
      gfmul_1<4>(a, b, c);
      c[2] ^= c[1];

      a[0] = a[1] = c[0];
      a[2] = a[3] = c[2];
      a[4] = c[3];
      b[0] = b[2] = b[4] = m3;
      b[1] = b[3] = x3;
      gfmul_1<5>(a, b, c);

      buffer0[num] = c[0];
      buffer1[num] = c[1] ^ c[2];
      buffer2[num] = c[3] ^ c[4] ^ m4;
      buffer3[num] = zero_block;
      buffer4[num] = zero_block;
    } else {
      block B = zero_block;
      block t0, t1;

      gfmul(m1, m2, &t0);
      gfmul(t0, m3, &t0);

      gfmul(m4, delta[1], &t1);

      B = t0 ^ t1;

      buffer0[num] = B;
    }
    num++;
  }

  inline void polyPrdt4(block &x1, block &m1, block &x2, block &m2, block &x3,
                        block &m3, block &x4, block &m4, block &m5) {
    if (num >= buffer_sz)
      batch_check();

    if (party == ALICE) {
      block a[7], b[7], c[7];

      a[0] = a[1] = m1;
      a[2] = m2;
      a[3] = x1;
      b[0] = m2;
      b[1] = b[3] = x2;
      b[2] = x1;
      gfmul_1<4>(a, b, c);
      c[2] ^= c[1];

      a[0] = a[1] = c[0];
      a[2] = a[3] = c[2];
      a[4] = a[5] = c[3];
      b[0] = b[2] = b[4] = m3;
      b[1] = b[3] = b[5] = x3;
      gfmul_1<6>(a, b, c);
      c[2] ^= c[1];
      c[4] ^= c[3];
      // c[0] = t4 = m1m2m3
      // c[2] = t5 = m1m2x3+m1m3x2+m2m3x1
      // c[4] = t8 = m1x2x3+m2x1x3+m3x1x2
      // c[5] = t11 = x1x2x3

      a[0] = a[1] = c[0];
      a[2] = a[4] = c[2];
      a[3] = a[5] = c[4];
      a[6] = c[5];
      b[0] = b[2] = b[3] = b[6] = m4;
      b[1] = b[4] = b[5] = x4;
      gfmul_1<7>(a, b, c);
      c[2] ^= c[1];
      c[4] ^= c[3];
      c[6] ^= c[5];
      // c[0] = m1m2m3m4
      // c[2] = coefficient of \Delta
      // c[4] = coefficient of \Delta^2
      // c[6] = coefficient of \Delta^3

      buffer0[num] = c[0];
      buffer1[num] = c[2];
      buffer2[num] = c[4];
      buffer3[num] = c[6] ^ m5;
      buffer4[num] = zero_block;
    } else {
      block B = zero_block;
      block t0, t1;

      gfmul(m1, m2, &t0);
      gfmul(t0, m3, &t0);
      gfmul(t0, m4, &t0);

      gfmul(m5, delta[2], &t1);

      B = t0 ^ t1;

      buffer0[num] = B;
    }
    num++;
  }

  inline void polyPrdt5(block &x1, block &m1, block &x2, block &m2, block &x3,
                        block &m3, block &x4, block &m4, block &x5, block &m5,
                        block &m6) {
    if (num >= buffer_sz)
      batch_check();

    if (party == ALICE) {
      block c[6], d[6];

      gfmul4(m1, m1, m2, x1, m2, x2, x1, x2, c);
      c[2] ^= c[1];

      gfmul6(c[0], c[0], c[2], c[2], c[3], c[3], m3, x3, m3, x3, m3, x3, c);
      c[2] ^= c[1];
      c[4] ^= c[3];
      // c[0] = t4 = m1m2m3
      // c[2] = t5 = m1m2x3+m1m3x2+m2m3x1
      // c[4] = t8 = m1x2x3+m2x1x3+m3x1x2
      // c[5] = t11 = x1x2x3
      gfmul4(c[0], c[0], c[2], c[4], m4, x4, m4, m4, d);
      gfmul4(c[2], c[4], c[5], c[5], x4, x4, m4, x4, c);
      d[2] ^= d[1];
      c[0] ^= d[3];
      c[2] ^= c[1];
      // d[0] = t12 = m1m2m3m4
      // d[2] = t14 = coefficient of \Delta
      // c[0] = t16 = coefficient of \Delta^2
      // c[2] = t18 = coefficient of \Delta^3
      // c[3] = t19 = x1x2x3x4
      gfmul6(d[0], d[0], d[2], c[0], d[2], c[2], m5, x5, m5, m5, x5, m5, d);
      gfmul3(c[0], c[3], c[2], x5, m5, x5, c);
      // d[0] = m1m2m3m4m5
      // d[2] + d[1] = coefficient of \Delta
      // d[4] + d[3] = coefficient of \Delta^2
      // c[0] + d[5] = coefficient of \Delta^3
      // c[2] + c[1] + m6 = coefficient of \Delta^3
      buffer0[num] = d[0];
      buffer1[num] = d[2] ^ d[1];
      buffer2[num] = d[4] ^ d[3];
      buffer3[num] = c[0] ^ d[5];
      buffer4[num] = c[2] ^ c[1] ^ m6;
    } else {
      block B = zero_block;
      block t0, t1;

      gfmul(m1, m2, &t0);
      gfmul(t0, m3, &t0);
      gfmul(t0, m4, &t0);
      gfmul(t0, m5, &t0);

      gfmul(m6, delta[3], &t1);

      B = t0 ^ t1;

      buffer0[num] = B;
    }
    num++;
  }
};
#endif

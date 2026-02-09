#ifndef BASE_SVOLE_F2K_H__
#define BASE_SVOLE_F2K_H__
#include "emp-ot/emp-ot.h"

namespace emp {

template <typename IO> class BaseSVoleF2k {
public:
  int party;
  IO **ios;
  IO *io;
  FerretCOT<IO> *ferret = nullptr;
  block delta;

  GaloisFieldPacking pack;

  BaseSVoleF2k(int party, IO **ios, FerretCOT<IO> *ferret)
      : party(party), ios(ios), ferret(ferret) {

    if (party == BOB)
      delta = ferret->Delta;
    io = ios[0];
  }

  ~BaseSVoleF2k() {
  }

  void extend(block *val, block *mac, int num) {
    block *ferret_buffer = new block[num*128];
    ferret->rcot(ferret_buffer, num*128);
    std::size_t j = 0;
    for(std::size_t i = 0; i < num; ++i) {
      bool val_b[128];
      if(party == ALICE) {
        for(int i = 0; i < 128; ++i)
          val_b[i] = getLSB(ferret_buffer[j+i]);
        val[i] = bool_to_block(val_b);
      }
      pack.packing(mac+i, ferret_buffer+j);
      j += 128;
    }
    delete[] ferret_buffer;
  }

  // DEBUG
  void check_correctness(block *val, block *mac, int num) {
    if (party == ALICE) {
      io->send_data(val, num * sizeof(block));
      io->send_data(mac, num * sizeof(block));
    } else {
      block *vr = new block[num];
      block *mr = new block[num];
      io->recv_data(vr, num * sizeof(block));
      io->recv_data(mr, num * sizeof(block));
      for (int i = 0; i < num; ++i) {
        gfmul(vr[i], delta, &vr[i]);
        vr[i] = vr[i] ^ mac[i];
        if (memcmp(vr + i, mr + i, 16) != 0) {
          std::cout << i << std::endl;
          abort();
        }
      }
    }
  }
};
} // namespace emp
#endif

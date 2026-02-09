#include "emp-tool/emp-tool.h"
#include "emp-zk/emp-zk.h"
#include <iostream>
#include <unordered_map>
using namespace emp;
using namespace std;


int port, party;
const int threads = 1;

bool arePermutations(const std::vector<uint64_t>& arr1, const std::vector<uint64_t>& arr2) {
    // If arrays have different sizes, they can't be permutations
    if (arr1.size() != arr2.size()) {
        return false;
    }
    
    // Count frequency of each element in arr1
    std::unordered_map<uint64_t, int> freq;
    for (uint64_t num : arr1) {
        freq[num]++;
    }
    
    // Decrement frequency for each element in arr2
    for (uint64_t num : arr2) {
        if (freq.find(num) == freq.end() || freq[num] == 0) {
            return false;  // Element not in arr1 or count exhausted
        }
        freq[num]--;
    }
    
    return true;
}

void permutation(BoolIO<NetIO> *ios[threads], int party) {
  char* flag = "lactf{}";
  setup_zk_arith<BoolIO<NetIO>>(ios, threads, party);
    // Alice's secret vectors - only Alice knows these
  std::vector<uint64_t> vec1;
  std::vector<uint64_t> vec2;
  
  // fake arrays
  if (party == ALICE) {
    vec1 = {10,1,2,3,4,5,6,7,8,9};
    vec2 = {6, 8, 9, 3, 1, 10, 2, 7, 4, 5};
  }
  
  std::vector<IntFp> array1;
  std::vector<IntFp> array2;
  
  for (int i = 0; i < 10; i++) {
    if (party == ALICE) {
      array1.push_back(IntFp(vec1[i], ALICE));
      array2.push_back(IntFp(vec2[i], ALICE));
    } else {
      // Bob inputs dummy values (0) since he doesn't know the arrays
      array1.push_back(IntFp(0, ALICE));
      array2.push_back(IntFp(0, ALICE));
    }
  }

  uint64_t X;
  if (party == BOB) {
    cout << "You feel a silver bullet lodged in your leg, maybe you should have been quicker on the draw" << endl;
    cout << "Death approaches you, and you are offered a final wager: " << endl;
    cout << "In front of me lays a two hands of cards, one a shuffle of the other. If you can guess what cards are present, I will grant you another chance at life" << endl;
    cout << "First, you may challenge me to show the two hands are in fact the same. Then you must submit your final guess" << endl;

    cin >> X;
    ZKFpExec::zk_exec->send_data(&X, sizeof(uint64_t));
  } else {
    ZKFpExec::zk_exec->recv_data(&X, sizeof(uint64_t));
  }
  IntFp acc1 = IntFp(1, PUBLIC);
  IntFp acc2 = IntFp(1, PUBLIC);
  for (int i = 0; i < 10; i++) {
    acc1 = acc1 * (array1[i] + X);
    acc2 = acc2 * (array2[i] + X);
  }
  IntFp final_zero = acc1 + acc2.negate();
  batch_reveal_check_zero(&final_zero, 1);
  finalize_zk_arith<BoolIO<NetIO>>();
  std::vector<uint64_t> guesses;

  // Guess the array
  for (int i = 0; i < 10; i++) {
    uint64_t guess;
    
    if (party == BOB) {
      cout << "guess " << i << endl;
      cin >> guess;
      ios[0]->io->send_data(&guess, sizeof(uint64_t));
    } else {
      ios[0]->io->recv_data(&guess, sizeof(uint64_t));
      guesses.push_back(guess);
    }
  }
  if (party == ALICE) {
    if (arePermutations(guesses, vec1)) {
      for (int i = 0; i < 46; i++)
        ios[0]->io->send_data(&flag[i], sizeof(char));
    }
  } else {;
    for (int i = 0; i < 46; i++) {
      char f;
      ios[0]->io->recv_data(&f, sizeof(char));
      cout << f;
    }
    // Did you not get a response?
    // Then you failed, and all that's left is the void of death, waiting for a call that's not coming
    // If only you could go back in time, and get a second chance
  }


}

int main(int argc, char **argv) {
  
  party = BOB;

  BoolIO<NetIO> *ios[threads];
  for (int i = 0; i < threads; ++i)
    ios[i] = new BoolIO<NetIO>(
        new NetIO(party == ALICE ? nullptr : "34.169.138.235", 31183), // replace with information for challenge serveer
        party == ALICE);

  permutation(ios, party);

  for (int i = 0; i < threads; ++i) {
    delete ios[i]->io;
    delete ios[i];
  }
  return 0;
}

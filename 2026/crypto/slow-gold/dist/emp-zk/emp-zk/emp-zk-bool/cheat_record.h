#ifndef EMP_ZK_CHEAT_RECORD_H__
#define EMP_ZK_CHEAT_RECORD_H__
#include <string>
#include <vector>
using std::string;
using std::vector;

class CheatRecord {
public:
  static vector<string> message;
  static void reset() { message.clear(); }
  static void put(const string &s);
  static bool cheated() { return !message.empty(); }
};
#endif
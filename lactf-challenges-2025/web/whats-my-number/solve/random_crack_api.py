import z3
import struct
import math
from typing import Union,Optional
from enum import Enum

# NOTE: random cache size is 64 and it is read out LIFO. Therefore, output random numbers aren't all contiguous, with a cache refill every 64 numbers
# If you have a range of generated numbers of length k, then you have a k/64 probability of the predictor failing

# XORshift128+ algorithm
def xorshift(s0: int, s1: int) -> tuple[int,int]:
  se_s1 = s0
  se_s0 = s1
  s0 = se_s0
  se_s1 ^= (se_s1 << 23) % (1 << 64)
  se_s1 ^= ((se_s1 % (1 << 64)) >> 17) # Logical shift instead of Arthmetric shift
  se_s1 ^= se_s0
  se_s1 ^= ((se_s0 % (1 << 64)) >> 26)
  s1 = se_s1

  return s0, s1

def mantissa_from_state(s0: int) -> int:
  return s0 >> 12

def double_from_state(s0: int) -> float:
  mantissa = mantissa_from_state(s0)
  u_long_long_64 = mantissa | 0x3FF0000000000000
  float_64 = struct.pack("<Q", u_long_long_64)
  double = struct.unpack("d", float_64)[0]

  double -= 1

  return double

def scaled_floor_from_state(s0: int, N: int) -> int:
  doub = double_from_state(s0)

  return math.floor(doub * N)

class Predictor:
  def __init__(self):
    self._input_type = ""
    self._state_0, self._state_1 = z3.BitVecs("_state_0 _state_1", 64)
    self._solver = z3.Solver()
    self._states = {}

  def reset(self):
    self._input_type = ""
    self._state_0, self._state_1 = z3.BitVecs("_state_0 _state_1", 64)
    self._solver.reset()
    self._states = {}
  
  # internal representation of xorshift state
  def _advance_xorshift(self):
    se_s1 = self._state_0
    se_s0 = self._state_1
    self._state_0 = se_s0
    se_s1 ^= se_s1 << 23
    se_s1 ^= z3.LShR(se_s1, 17)
    se_s1 ^= se_s0
    se_s1 ^= z3.LShR(se_s0, 26)
    self._state_1 = se_s1

  # feed mantissa values (52-bit unsigneds) to z3 solver
  def feed_mantissas(self, mantissas: list[int]):
    for mantissa in mantissas[::-1]:
      self._advance_xorshift()
      self._solver.add(int(mantissa) == z3.LShR(self._state_0, 12))

  # feed Math.random() double outputs to z3 solver
  def feed_raw_doubles(self, doubles: list[float]):
    mantissas = []
    for doub in doubles:
      float_64 = struct.pack("d", doub + 1)

      u_long_long_64 = struct.unpack("<Q", float_64)[0]

      mantissa = u_long_long_64 & ((1 << 52) - 1)

      mantissas.append(mantissa)
    self.feed_mantissas(mantissas)
  
  # feed (lower,upper) bound pairs on the mantissa to z3 solver. all bounds are unsigned 52-bit integers
  def feed_mantissa_bounds(self, bounds: list[tuple[int,int]]):
    for bound in bounds[::-1]:
      self._advance_xorshift()
      mantissa_low, mantissa_high = bound
      self._solver.add(z3.LShR(self._state_0,12) >= mantissa_low)
      self._solver.add(z3.LShR(self._state_0,12) <= mantissa_high)

  # feed numbers (ints) of the form Math.floor(Math.random()*N) to the solver
  def feed_scaled_floors(self, nums: list[int], N: int):
    bounds = []
    for num in nums:
      low_bound = (num) / N
      high_bound = (num + 1) / N

      float_64_low = struct.pack("d", low_bound + 1)
      float_64_high = struct.pack("d", high_bound + 1)

      u_long_long_64_low = struct.unpack("<Q", float_64_low)[0]
      u_long_long_64_high = struct.unpack("<Q", float_64_high)[0]

      mantissa_low = (u_long_long_64_low & ((1 << 52) - 1)) - 1
      mantissa_high = (u_long_long_64_high & ((1 << 52) - 1)) + 1

      bounds.append((mantissa_low,mantissa_high))
    self.feed_mantissa_bounds(bounds)

  # determine if model is satisfiable
  def check_sat(self) -> bool:
    return self._solver.check() == z3.sat
  
  # internal method to solve the internal model  
  def _model(self):
    model = self._solver.model()
    self._states = {}
    for state in model.decls():
      self._states[state.__str__()] = model[state]

  # predict the next mantissa outputted by Math.random()
  def predict_next_mantissa(self) -> int:
    self._model()

    state0 = self._states["_state_0"].as_long()

    return mantissa_from_state(state0)

  # predict the next double outputted by Math.random()
  def predict_next_double(self) -> float:
    self._model()

    state0 = self._states["_state_0"].as_long()

    return double_from_state(state0)
  
  # predict the next member of the sequence Math.floor(Math.random() * N)
  def predict_next_scaled_floor(self, N: int) -> int:
    self._model()

    state0 = self._states["_state_0"].as_long()

    return scaled_floor_from_state(state0, N)
  
  # return computed initial states if SAT  
  def get_states(self) -> tuple[int,int]:
    if (self.check_sat()):
      self._model()
      return (self._states["_state_0"].as_long(), self._states["_state_1"].as_long())
    else:
      raise Exception("Model is not satisfiable!")

class InputType(Enum):
  RAW = 1
  SCALED = 2

class RandomModel:
  def __init__(self):
    self.predictor = Predictor()
    self._current_state = None
    self._random_cache = []
    self._current_pos = 0
  
  # fill the random cache completely
  # self._current_state is the most recent state generated
  def fill_cache(self, initial_state: Optional[tuple[int,int]] = None):
    if self._current_pos == 0:
      if initial_state is None:
        raise ValueError("Random cache is empty and no initial state is given.")
      self._random_cache.append(initial_state)
      self._current_pos += 1

    for i in range(self._current_pos,64):
      s0, s1 = self._random_cache[i-1]
      new_states = xorshift(s0, s1)
      self._current_state = new_states
      self._random_cache.append(new_states)
      self._current_pos += 1
  
  # return the next random number and refill the cache if needed
  def _get_rand(self) -> tuple[int,int]:
    if self._current_pos == 0:
      self.fill_cache(initial_state=self._current_state)
    
    self._current_pos -= 1
    return self._random_cache.pop()
  
  # return the next output from Math.random()
  def get_next(self, input_type: InputType, N: int = 0) -> Union[int,float]:
    next_rand = self._get_rand()[0]

    match input_type:
      case InputType.RAW:
        return double_from_state(next_rand)
      case InputType.SCALED:
        if N == 0:
          raise ValueError("Didn't provide a scaling factor")
        return scaled_floor_from_state(next_rand, N)
  
  # test if the cache has been "refilled" within the random samples provided
  def _test_for_refill(self, sample: list[int], input_type: InputType, N: int = 0) -> bool:
    self.predictor.reset()
    match input_type:
      case InputType.RAW:
        self.predictor.feed_raw_doubles(sample)
      case InputType.SCALED:
        if N == 0:
          raise ValueError("Didn't provide a scaling factor")
        self.predictor.feed_scaled_floors(sample, N)
        
    # model is not satisfiable if cache has been refilled due to its LIFO nature
    return not self.predictor.check_sat()
  
  # provide an input of at least 65 samples to initialize the Random Number model
  # if refill occurs on earlier samples, behavior may be incorrect (approximately 5/64 chance)
  def input_samples(self, sample: list[Union[int,float]], input_type: InputType, N: int = 0) -> tuple[int,int]:
    assert len(sample) >= 65, "Sample length must be at least 65 to gain necessary information"

    # binary search to find the find the point where cache refill occurs
    low = 1
    high = 64

    while (high > low + 1):
      mid = (low + high) // 2
      needs_refill = self._test_for_refill(sample[:mid], input_type, N)

      # we have an upper bound on where cache refill occurs
      if needs_refill:
        high = mid
      # we have a lower bound on where cache refill occurs
      else:
        low = mid

    # we now know when the refill ocurred
    valid_samples = sample[:low]
    self.predictor.reset()
    match input_type:
      case InputType.RAW:
        self.predictor.feed_raw_doubles(valid_samples)
      case InputType.SCALED:
        if N == 0:
          raise ValueError("Didn't provide a scaling factor")
        self.predictor.feed_scaled_floors(valid_samples, N)
    
    s0_prev, s1_prev = self.predictor.get_states()
    
    # determine the oldest state in the previous cache as a reference point, fill cache based on this state
    oldest_state = xorshift(s0_prev, s1_prev)

    self.fill_cache(initial_state=oldest_state)

    # skip all the random numbers that have been generated in this cache and refill again
    for r in range(64):
      _ = self._get_rand()
    
    # step forward for all the remaining random numbers in our sample
    for r in range(high,len(sample)):
      _ = self._get_rand()

    return (low,high)
from math import log, floor

def find_complement(self, num):
  """
  :type num: int
  :rtype: int
  """
  req_bits = int(floor(log(num, 2)) + 1)
  return int('1' * req_bits, 2) ^ num


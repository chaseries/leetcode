from math import log, floor

def fc(num):
  req_bits = floor(log(num, 2)) + 1
  return int('1' * req_bits, 2) ^ num

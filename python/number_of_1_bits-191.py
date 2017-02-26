
def hamming_weight(self, n):
	"""
	:type n: int
	:rtype: int
	"""
	return len(filter(lambda c: c == '1', bin(n)))

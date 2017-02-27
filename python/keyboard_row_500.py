
american_keyboard = [
  ['q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'],
  ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'],
  ['z', 'x', 'c', 'v', 'b', 'n', 'm']
]

def every_char_in_row(row, word):
  for char in word:
    if not char.lower() in map(lambda c: c.lower(), row):
      return False
  return True

def find_words(keyboard, words):
  hits = []
  for word in words:
    for row in keyboard:
      if every_char_in_row(row, word):
        hits.append(word)
  return hits

def find_words_american(words):
  """
  :type words: List[str]
  :rtype: List[str]
  """
  return find_words(american_keyboard, words)

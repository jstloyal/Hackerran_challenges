def alphabet_hash
  alphabet = {}
  ('a'..'z').to_a.each do |letter|
    alphabet[letter] = 0
  end
  alphabet
end

def anagram(str)
  -1 if str.size.odd?
  alphabet = alphabet_hash
  str.size.times do |index|
    letter = str[index]
    index < (str.size / 2) ? alphabet[letter] += 1 : alphabet[letter] -= 1
  end

  positives = alphabet.values.select &:positive?

  # postritivestr = alphabet.valuestr.strelect do |value|
  #   value.postritive?
  # end
  positives.sum
end

p anagram('string')

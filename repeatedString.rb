def repeatedString(s, n)
  a_count = s.count('a')
  repeat = n / s.size
  a_count = a_count * repeat
  (n.to_i % s.size) > 0 ? a_count + s[0...(n.to_i % s.size)].count('a') : a_count
end

p repeatedString('aba', 10)
p repeatedString('a', 10000)
p repeatedString('abcac', 10)
p repeatedString('bannsqaweslealrsaleawwwqquuuiiiooopppuuyyyadfeawgghhhfffbbbvvvcccnnnjjjhhhfffdddssswkqlawrtui', 1000000000)

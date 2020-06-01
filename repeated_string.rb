def repeated_string(string, num)
  a_count = string.count('a')
  repeat = num / string.size
  a_count *= repeat
  (num.to_i % string.size).positive? ? a_count + string[0...(num.to_i % string.size)].count('a') : a_count
end

p repeated_string('aba', 10)
p repeated_string('a', 10000)
p repeated_string('abcac', 10)
p repeated_string('bannsqaweslealrsaleawwwqquuuiiiooopppuuyyyadfeawgghhhfffbbbvvvcccnnnjjjhhhfffdddssswkqlawrtui', 1000000000)


# 1. Find the occurrences of character ‘a’ in the given string.
# 2. Find the No. of repetitions which are required to find the ‘a’ occurrences.
# 3. Multiply the single string occurrences to the No. of repetitions.
# 4. If given n is not the multiple of given string size then we will find the ‘a’ occurrences in the remaining substring.

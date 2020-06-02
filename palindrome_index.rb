def palindrome_index(str)
  
  return -1 if str == str.reverse

  reversed = str.reverse
  str.size.times do |index|
    unless str[index] == reversed[index]
      temp_str = str.clone
      temp_str[index] = ''
      temp_reserved = reversed.clone
      temp_reserved[temp_reserved.size - 1 - index] = ''

      return index if temp_str == temp_reserved
    end
  end
end

p palindrome_index('aba')
p palindrome_index('baa')
p palindrome_index('aaab')

#return -1 if it is palindrome
#find an index to make index palindrome when you remove it 
#return -1 if it cannot be palindrome

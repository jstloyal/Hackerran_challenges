def transpose(string)
  (0..string.length).each do |i|
    if string[i] == 'n' and string[i - 1] == 'g'
      j = i - 1
      while string[j] == 'g'
        string[j] = 'n'
        string[j + 1] = 'g'
        j -= 1
      end
    end
  end
  return string
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg
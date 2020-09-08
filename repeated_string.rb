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


var count = 0;

function cc(card) {
  // Only change code below this line
  switch(card) {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      count ++;
      break;
    case 'J':
    case 'Q':
    case 'K':
    case 'A':
    case 10:
      count --;
      break;
  }

  var holdBet = 'Hold';
  if (count > 0) {
    holdBet = 'Bet';
  }

  return count + ' ' + holdBet;
  // Only change code above this line
}

cc(2); cc(3); cc(7); cc('K'); cc('A');

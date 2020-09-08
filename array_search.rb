# Let min = 0 and max = n-1.
# If max < min, then stop: target is not present in array. Return -1.
# Compute guess as the average of max and min, rounded down (so that it is an integer).
# If array[guess] equals target, then stop. You found it! Return guess.
# If the guess was too low, that is, array[guess] < target, then set min = guess + 1.
# Otherwise, the guess was too high. Set max = guess - 1.
# Go back to step 2.

# array and target_val

def array_search(arr, target_val)
  min = 0
  max = arr.size - 1
  guess = arr.each_with_index { |val, ind| return ind if val == target_val }
  while (min < max) do
    guess = (max + min) / 2
    if arr[guess] == target_val
      puts "You found it!"
    elsif arr[guess] < target_val
      min = guess + 1
    else 
      max = guess - 1
    end
  end
end

p array_search([2,4,5,6,7,8,9,10,11,12,14,15,17,19], 15)

#
# 02 - pattern matching - array with values
#

def match_array_with_values(input)
  case input
  in [1, b, 3]
    "matching - #{input}, second element is #{b}"
  else
    "no match"
  end
end

puts match_array_with_values([1, 2, 3])
puts match_array_with_values([3, 2, 1])
puts match_array_with_values([1, 2, 3, 4])

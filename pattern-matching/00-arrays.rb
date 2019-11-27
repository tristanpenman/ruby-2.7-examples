#
# 00 - pattern matching - arrays
#

def match_array(input)
  case input
  in [a, b, c]
    "matching - #{a}, #{b}, #{c}"
  else
    "no match"
  end
end

puts match_array(nil)
puts match_array(1)
puts match_array([1, 2])
puts match_array([1, 2, 3])
puts match_array([1, 2, 3, 4])

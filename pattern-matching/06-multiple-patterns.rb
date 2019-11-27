#
# 04 - pattern matching - multiple patterns
#

def match_multiple(input)
  case input
  in 0 | 1
    true
  else
    false
  end
end

puts match_multiple(0)
puts match_multiple(1)
puts match_multiple(2)

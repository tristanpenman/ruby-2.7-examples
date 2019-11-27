#
# 03 - pattern matching - pinning motivation
#

def match_without_pinning(input)
  case input
  in [a, a]   # We'd like to assert that the first and second elements are equal
    a
  else
    '-'
  end
end

# The fact that we see no output shows that this doesn't even parse as valid Ruby
puts 'begin'
puts match_without_pinning([1, 1])
puts match_without_pinning([1, 2])
puts 'end'

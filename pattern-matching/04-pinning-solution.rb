#
# 04 - pattern matching - pinning solution
#

def match_with_pinning(input)
  case input
  in [a, ^a]
    a
  else
    '-'
  end
end

# Output is '-'
puts match_with_pinning([0, 1])
puts match_with_pinning([1, 0])

# Output is '1'
puts match_with_pinning([1, 1])

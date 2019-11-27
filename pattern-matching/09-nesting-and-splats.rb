#
# 09 - pattern matching - nesting and splats
#

def match_nested(input)
  case input
  in [a, {b: [c, d, *e], **f}]
    "matched #{a}, #{c}, #{d}, #{e}, #{f}"
  else
    'no match'
  end
end

# Match with array splat
puts match_nested([1, {b: [2, 3, 4, 5]}])

# Match with object splat
puts match_nested([1, {b: [2, 3], c: ['a', 'b', 'c']}])

# No match
puts match_nested([1, {c: [2, 3]}])

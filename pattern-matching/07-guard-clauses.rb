#
# 07 - guard clauses
#

def match_with_guards(input)
  case input
  in {op: :abs, val: val} if val.positive?
    val
  in {op: :abs, val: val} if val.negative?
    -val
  end
end

# Matched
puts match_with_guards(op: :abs, val: 1)
puts match_with_guards(op: :abs, val: -1)

# Unmatched
puts match_with_guards(op: :abs, val: 0)

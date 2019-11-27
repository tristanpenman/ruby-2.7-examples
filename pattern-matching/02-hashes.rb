#
# 03 - pattern matching - hashes
#

def match_hash(input)
  case input
  in {op: :add, left: left, right: right}
    left + right
  in {op: :sub, left: left, right: right}
    left – right
  in {op: :abs, val: val}
    val.abs
  in {op: op}
    raise ArgumentError, "Unknown op: #{op}"
  end
end

# Matched
puts match_hash(op: :add, left: 1, right: 2)

# Notice that extra keys are ignored
puts match_hash(op: :abs, val: -1)

# Unmatched op
begin
  puts match_hash(op: :div, left: 1, right: 2)
rescue => e
  puts "Error: #{e}"
end

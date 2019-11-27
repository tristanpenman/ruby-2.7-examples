#
# 05 - pattern matching - mixing 'when' and 'in'
#

def match_mixed(test)
  case test
  when 'hello'
    'hello'
  in [a, b]
    "a: #{a}, b: #{b}"
  end
end

puts match_mixed('hello')

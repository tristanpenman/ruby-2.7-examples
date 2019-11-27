#
# 08 - no matches
#

def match(input)
  case input
  in 'ping'
    'pong'
  end
end

# Matched
puts match('ping')

begin
  # Does not return nil, as we might have expected; instead we find that
  # NoMatchingPatternError is raised
  puts match('pong')
rescue NoMatchingPatternError => e
  puts "Error: #{e}"
end

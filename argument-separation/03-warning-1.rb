#
# 03 - argument separation - warning 1
#

def do_the_thing_1(*pos, key: 1)
  puts "pos: #{pos}, key: #{key}"
end

# keyword argument provided unambiguously
do_the_thing_1(key: 2)

# Should the hash go into 'pos' or be treated as a keyword argument?
do_the_thing_1({key: 2})

# Say what you mean...
do_the_thing_1(**{key: 2})

#
# This is what to expect on Ruby 2.7:
#

# pos: [], key: 2
# 03-warning-1.rb:13: warning: The last argument is used as the keyword parameter
# 03-warning-1.rb:5: warning: for `do_the_thing_1' defined here
# pos: [], key: 2
# pos: [], key: 2

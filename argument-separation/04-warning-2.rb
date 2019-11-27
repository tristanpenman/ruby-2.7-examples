#
# 04 - argument separation - warning 2
#

def do_the_thing_2(pos, key: 1)
  puts "pos: #{pos}, key: #{key}"
end

# Looks like keyword argument is provided, but 'pos' needs to be assigned, and this
# can be done by converting the keyword arguments to a hash
do_the_thing_2(key: 2)

# Looks like a positional argument, 'pos' is assignable, keyword argument will be
# assigned it's default value
do_the_thing_2({key: 2})

#
# This is what to expect on Ruby 2.7:
#

# 04-warning-2.rb:11: warning: The keyword argument is passed as the last hash parameter
# 04-warning-2.rb:5: warning: for `do_the_thing_2' defined here
# pos: {:key=>2}, key: 1
# pos: {:key=>2}, key: 1

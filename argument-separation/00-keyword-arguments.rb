#
# 00 - argument separation - keyword arguments
#

def purchase_items(item: nil, qty: 1)
  puts "purchasing #{qty} unit(s) of #{item} (but not really)"
end

# These are all equivalent
purchase_items(item: 'socks', qty: 1)
purchase_items(qty: 1, item: 'socks')
purchase_items(item: 'socks')

# And before Ruby 2.7, automatic conversion from a hash is also equivalent
purchase_items({item: 'socks', qty: 1})

# This works, but it is probably not what we want, and requires custom validation
purchase_items(qty: 3)

#
# This is what to expect with Ruby 2.7:
#

# purchasing 1 unit(s) of socks (but not really)
# purchasing 1 unit(s) of socks (but not really)
# purchasing 1 unit(s) of socks (but not really)
# 00-keyword-arguments.rb:15: warning: The last argument is used as the keyword parameter
# 00-keyword-arguments.rb:5: warning: for `purchase_items' defined here
# purchasing 1 unit(s) of socks (but not really)
# purchasing 3 unit(s) of  (but not really)

#
# 01 - argument separation - required keyword arguments
#

def purchase_items(item:, qty: 1)
  puts "purchasing #{qty} unit(s) of #{item} (but not really)"
end

# These are all equivalent
purchase_items(item: 'socks', qty: 1)
purchase_items(qty: 1, item: 'socks')
purchase_items(item: 'socks')

# Not so happy... raises ArgumentError
purchase_items(qty: 1)

#
# This is what to expect:
#

# purchasing 1 unit(s) of socks (but not really)
# purchasing 1 unit(s) of socks (but not really)
# purchasing 1 unit(s) of socks (but not really)
# Traceback (most recent call last):
# 	1: from 01-required-keyword-arguments.rb:15:in `<main>'
# 01-required-keyword-arguments.rb:5:in `purchase_items': missing keyword: :item (ArgumentError)

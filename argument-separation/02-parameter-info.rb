#
# 02 - argument separation - parameter info
#
# Based on code from: http://blog.marc-andre.ca/2013/02/23/ruby-2-by-example/
#

class C
  def hi(needed,
         maybe = "42",
         *args,
         named1: 'hello',
         named2:,
         **options,
         &block)
  end
end

p C.instance_method(:hi).parameters

#
# This is what to expect:
#

# [[:req, :needed], [:opt, :maybe], [:rest, :args], [:keyreq, :named2], [:key, :named1], [:keyrest, :options], [:block, :block]]

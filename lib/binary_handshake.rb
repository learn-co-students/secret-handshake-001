# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.
class SecretHandshake

  attr_reader :number
  
  def initialize (str)
    @number = str.to_i(2)
  end

  Secret_hash = {1 => "wink", 2 => "double blink", 4 => "close your eyes", 8 => "jump"}

  def commands
    arr = Secret_hash.select {|k, v| k & self.number == k}.values
    if 16 & self.number == 16
      arr.reverse
    else
      arr
    end
  end
end
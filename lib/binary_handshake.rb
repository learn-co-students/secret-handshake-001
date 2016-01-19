# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.
class SecretHandshake

  attr_reader :input

  def initialize(input)
    @input = input
  end

  def commands
  arr = self.input.split(//)
  ans = []
  count = 0
  arr.reverse_each do |bit|
    count += 1
    if bit == "1"
      case count
        when  1
          ans << "wink"
        when  2
          ans << "double blink"
        when  3
          ans << "close your eyes"
        when  4
          ans << "jump"
        when  5
          ans.reverse!
        else
          ans = []
        end
      elsif bit != "1" && bit != "0"
      ans = []
    end
  end
  ans
end

end

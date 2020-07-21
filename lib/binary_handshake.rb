require 'pry'

# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

class SecretHandshake
  attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence
  end

  def commands
    handshake = []
    array = @sequence.to_s.split(//).reverse
    array.length < 5 ? array[4] = nil : nil
    array.reverse!
    array[4] == '1' ? handshake.push("wink") : nil
    array[3] == '1' ? handshake.push("double blink") : nil
    array[2] == '1' ? handshake.push("close your eyes") : nil
    array[1] == '1' ? handshake.push("jump") : nil
    array[0] == '1' ? handshake.reverse! : nil
    handshake
  end
end
# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.

class SecretHandshake

  attr_accessor :binary

   def initialize(binary_string)
    @binary = binary_string.to_i
  end

  def commands
    handshakes = {10000 => 1,
                  1000 => 'jump',
                  100 => 'close your eyes',
                  10 => 'double blink',
                  1 => 'wink'}
    bin = binary
    shake = []
    reverse = false
    handshakes.each do |k, v|
      while k <= bin
        if k == 10000
          reverse = true
        elsif reverse == false
          shake.unshift(v)
        elsif reverse == true
          shake.push(v)
        end
        bin -= k
      end
    end
    shake
  end

end
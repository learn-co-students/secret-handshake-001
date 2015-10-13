# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.
class SecretHandshake
  attr_accessor :bin
  def initialize(bin)
    @bin = bin
  end

  SECRET = {
    1000 => "jump",
    100 => "close your eyes",
    10 => "double blink",
    1 => "wink"
  }

  def commands
    reveal = []
    newnum = @bin.to_i
    if @bin.match(/[a-zA-Z]/)
      reveal
    else
      SECRET.each do |x,y|
        if @bin.to_i >= 10000 && newnum == @bin.to_i
          newnum -= 10000
        end
          until newnum < x
            reveal.unshift(y)
            newnum -= x
          end
      end

      @bin.to_i >= 10000 ? reveal.reverse : reveal
    end
  end

end

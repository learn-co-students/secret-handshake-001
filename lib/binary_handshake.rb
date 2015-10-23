# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

class SecretHandshake
  def initialize(bin)
    @bin_arr = bin.split("")
  end

  def commands
    handshake = []
    if @bin_arr[-1] == "1"
      handshake << "wink"
    end
    if @bin_arr[-2] == "1"
      handshake << "double blink"
    end
    if @bin_arr[-3] == "1"
      handshake << "close your eyes"
    end
    if @bin_arr[-4] == "1"
      handshake << "jump"
    end
    if @bin_arr[-5] == "1"
      handshake.reverse!
    end
    handshake
  end
end
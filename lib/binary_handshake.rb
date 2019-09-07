# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.

class SecretHandshake
  attr_accessor :num, :input, :commands
  
  def initialize(num_string)
    @input = num_string
    @num = num_string.to_i(2)
    @commands = []
    if !input.match(/[^01]/)
      setup_commands
    end
  end

  def setup_commands
    get_winks
    get_blinks
    get_eye_close
    get_jumps
    get_reverse
  end

  def get_winks
    if @num & "00001".to_i(2) != 0
      @commands << "wink"
    end
  end

  def get_blinks
    if @num & "00010".to_i(2) != 0
      @commands << "double blink"
    end
  end

  def get_eye_close
    if @num & "00100".to_i(2) != 0
      @commands << "close your eyes"
    end
  end

  def get_jumps
    if @num & "01000".to_i(2) != 0
      @commands << "jump"
    end
  end

  def get_reverse
    if @num & "10000".to_i(2) != 0
      @commands.reverse!
    end
  end

end
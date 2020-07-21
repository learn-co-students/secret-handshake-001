# Binary Handshake Rules

# 1 = "wink"
# 10 = "double blink"
# 100 = "close your eyes"
# 1000 = "jump"
# 10000 = Reverse the order of the operations in the secret handshake.

# Write your code here.
require 'pry'
class SecretHandshake

  def initialize(value)
    @value = value.to_i
  end

  def commands
    array = []

    if @value >=10000
      large_number =true
      @value -= 10000
    end

    if @value >= 1000 && @value < 9999
      array << "jump"
      @value -= 1000
    end

    if @value >= 100 && @value < 9999
      array << "close your eyes"
      @value -= 100
    end

    if @value >= 10 && @value < 999
      array << "double blink"
      @value -= 10
    end

    if @value >= 1 && @value < 9
      array << "wink"
      @value -= 1
    end

    array.reverse!

    if large_number == true
      array.reverse!
    end

    return array
  end


end

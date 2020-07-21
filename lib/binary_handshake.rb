class SecretHandshake
  def initialize(bin)
    @bin_arr = bin.split("")
  end

  def commands
    handshake = []
    cmnd_hash = {
      -1 => "wink",
      -2 => "double blink",
      -3 => "close your eyes",
      -4 => "jump"
    }

    handshake.concat(cmnd_hash.select{|key| @bin_arr[key] == "1"}.values)
    handshake.reverse! if @bin_arr[-5] == "1"

    handshake
  end
end
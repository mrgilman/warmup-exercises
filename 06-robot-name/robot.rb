class Robot
  attr_accessor :name, :mac_address
  def initialize
    @name = set_name
    @mac_address = set_mac_address
  end

  def reset
    @name = set_name
  end

  private

  def set_name
    ('A'..'Z').to_a.sample(2).join + rand(100..999).to_s
  end

  def set_mac_address
    mac_address = ""
    6.times do
      mac_address += hex_number + ":"
    end
    mac_address.chomp(":")
  end

  def hex_number
    rand(0..255).to_s(16)
  end

end

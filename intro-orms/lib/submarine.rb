class Submarine
  include Diveable
  attr_reader :size, :fuel_type
  attr_accessor :serial_no

  def initialize(args = {})
    # args e.g. {serial_no: "GF42712", size: "large", fuel_type: "nuclear"}
    @serial_no = args[:serial_no]
    @size = args[:size]
    @fuel_type = args[:fuel_type]
    @is_underwater = false
  end

  def info
    "This is a #{self.size} submarine, burning #{self.fuel_type} fuel. Serial: #{self.serial_no}."
  end

end
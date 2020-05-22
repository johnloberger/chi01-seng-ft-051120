module Diveable
  attr_accessor :is_underwater

  def dive
    self.is_underwater = true
  end

  def emerge_from_water
    self.is_underwater = false
  end
end
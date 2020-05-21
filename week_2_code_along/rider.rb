class Rider

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.find_by_name(name)
    self.all.find {|rider| rider.name == name}
  end

  def my_magical_dragons
    #Returns an array of all the **names** of magical dragons for a rider
    my_saddles = Saddle.all.select {|saddle| saddle.rider == self && saddle.dragon.magic}
    my_saddles.map {|saddle| saddle.dragon.name }
  end

  def boy_dragons
    #Returns an array of the names of the boy dragons a rider rides.
    my_saddles_of_boy_dragons = Saddle.all.select {|saddle| saddle.rider == self && saddle.dragon.sex == "male"}
    my_saddles_of_boy_dragons.map {|saddle| saddle.dragon.name}
  end

  def self.all
    @@all
  end

end

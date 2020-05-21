class Dragon

  attr_reader :name, :color, :sex, :magic

  @@all = []

  def initialize(name, color, sex, magic)
    @name = name
    @color = color
    @sex = sex
    @magic = magic

    @@all << self
  end

  def riders
    binding.pry
  end

  def self.goth_girls_club
    #Returns all dragons that are either female or are the color black
    self.all.select {|dragon| dragon.color == "black" || dragon.sex == "female"}

  end

  def self.not_monochromatic
    #Returns an array of dragon names where the color of the dragon are not monochromatic
    self.all.select {|dragon| dragon.color != "black" && dragon.color != "grey"}
  end
  


  def self.all
    @@all
  end





end

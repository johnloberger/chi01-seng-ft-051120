class Brewery
  attr_reader :name
  attr_accessor :num_beers

  @@all = []

  def initialize(name, num_beers)
    @name = name
    @num_beers = num_beers

    @@all << self
  end

  def self.all
    @@all
  end

  # def number_of_visits
  #   Visit.all.select {|visit| visit.brewery == self}.count
  # end

  def self.most_beers
    self.all.max_by {|brewery| brewery.num_beers }.name
  end

end

class BeerEnthusiast
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def breweries_visited
    Visit.all.select do|visit|
      binding.pry
      visit.beer_enthusiast == self
    end
  end

  def total_spent
    total_num = breweries_visited.map{|visit| visit.bill_total}.sum
    "#{self.name} has spent a total of $#{total_num}!"
    binding.pry

  end

end

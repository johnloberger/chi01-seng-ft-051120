class Visit
  attr_reader :brewery, :beer_enthusiast
  attr_accessor :bill_total

  @@all = []

  def initialize(brewery, beer_enthusiast, bill_total)
    @brewery = brewery
    @beer_enthusiast = beer_enthusiast
    @bill_total = bill_total

    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_visited
    self.all.max_by{|visit| visit.count(visit.brewery)}
    brew_arr.max_by{|brewery| brew_arr.count(brewery)}
  end

end

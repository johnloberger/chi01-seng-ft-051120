puts "*" * 42
puts "LOADING artist.rb..."
class Artist
  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      puts "PAINTING IS????"
      p painting
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map { |p| p.gallery }
  end

  def cities
    self.galleries.map(&:city)
  end

end

class Fish < Animal
  include Diveable

  def initialize(args = {})
    super
    @is_underwater = true
  end

  # def self.best_one
  #   puts "calculating best fish..."
  #   super
  # end
end
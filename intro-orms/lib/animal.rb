class Animal
  attr_accessor :name, :age, :mood

  def initialize(args = {})
    p "in animal init"
    # args is expected to be a hash with keys/values for name, age, etc
    @is_underwater = false
    @name = args[:name]
    @age = args[:age]
    @mood = args[:mood]
  end

  # def self.best_one
  #   puts "calculating best animal..."
  # end

  def be_animal
    "I am an animal named #{self.name}!"
  end

  def greet
    "Hello! My name is #{self.name} and I am #{self.age} years old. I feel #{self.mood}."
  end

  def get_older!
    self.age += 1
    if self.age > 9
      self.mood = "wise"
    end
  end

end
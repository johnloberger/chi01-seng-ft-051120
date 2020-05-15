puts "*" * 42
puts "RUNNING console.rb..."
require_relative '../config/environment.rb'

vince = Artist.new("Van Gogh", 30)
banksy = Artist.new("Banksy", 2500)

guggs = Gallery.new("Guggenheim", "NYC")
spot = Gallery.new("The Spot", "Chicago")
yard = Gallery.new("Kelcey's Side Yard", "Kalamazoo")

sun = Painting.new("Sunflowers", 400000, vince, guggs)
bad = Painting.new("World's Bad Innit", 15000000000, banksy, spot)
portrait = Painting.new("Self - Portrait", 250000, vince, guggs)

p banksy.paintings

binding.pry

puts "?!" * 21
puts "Bob Ross rules."

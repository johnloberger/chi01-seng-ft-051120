class Player
  attr_reader :name
  attr_accessor :jersey_size

  def initialize(name, jersey_size)
    @name = name
    @jersey_size = jersey_size
  end

  def assign_jersey(jersey)
    jersey.player = self
  end

  def jerseys
    # Look at all the jerseys
    all_jerseys = Jersey.all
    # Filter for jersey's containing a player instance
    # that's the same as me, the player doing this method now
    all_jerseys.select do |jersey|

      # puts "current self name!!!"
      # puts self.name
      # puts "current jersey player!!!"
      # puts jersey.player

      if jersey.player
        self.name == jersey.player.name
      end
    end
  end

  def possible_jerseys
    # All of the jerseys that belong to no one
    # which are my size
    Jersey.unassigned.find_all do |jersey| 
      jersey.size == self.jersey_size 
    end
  end

  # def name
  #   @name
  # end

  # def jersey_size
  #   @jersey_size
  # end

  # def jersey_size=(new_jersey_size)
  #   @jersey_size = new_jersey_size
  # end

end
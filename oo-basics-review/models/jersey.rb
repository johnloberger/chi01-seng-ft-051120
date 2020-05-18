class Jersey
  attr_accessor :number, :player
  attr_reader :size, :version

  @@all = []

  def initialize(size, version, number, player=nil)
    @size = size
    @version = version
    @number = number
    @player = player
    @@all << self
  end

  def self.all
    @@all
  end

  def self.unassigned
    all.select do |jersey|
      # jersey.player == nil
      # jersey.player.nil?
      !jersey.player
    end
  end
end
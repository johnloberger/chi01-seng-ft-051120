class Tweet < OrmObject
  attr_reader :username
  attr_accessor :message, :id
  # @@all = []
  def initialize(attrs={})
    @id = attrs['id']
    @message = attrs['message']
    @username = attrs['username']
    # No need for the class var when we can use the database.
    # @@all << self
  end

  # def self.all
  #   tweet_rows = DB[:conn].execute("SELECT * from tweets;")
  #   # Each row from the DB connection is a hash with keys 'message' and 'username'
  #   tweet_rows.map { |row| Tweet.new(row) }
  # end

  # def self.find(id)
  #   # take in id,
  #   # get one record from db that has that id 
  #   # and return the Tweet instance representing it
  #   # or else return nil
  #   results = DB[:conn].execute("SELECT * FROM tweets WHERE id = ? LIMIT 1;", id)
  #   if results[0]
  #     return Tweet.new(results[0])
  #   else 
  #     return nil
  #   end
  # end

  def to_s
    "#{id}. #{username} says: #{message}"
  end

  def save
    # We need to either get a new tweet instance into the database row
    # OR we have an "existing" instance that needs to be updated.
    # Raw SQL query might look like:
    # "INSERT INTO tweets (message, username) VALUES ('coffee#', 'coffeedad');"
    if !self.id
      DB[:conn].execute("INSERT INTO tweets (message, username) VALUES (?, ?);", self.message, self.username)
      self.id = DB[:conn].last_insert_row_id
    else
      DB[:conn].execute("UPDATE tweets SET message = ? WHERE id = ?;", self.message, self.id)
    end

    self
  end


end

class MovieTicket
  attr_accessor :price, :movie_id, :customer_id, :id

  # @@all = [] 
  def self.all
    movie_ticket_rows = DB.execute("SELECT * from movie_tickets;")
    movie_ticket_rows.map do |row|
      MovieTicket.new(row)
    end
  end

  def self.query(price)
    price_int = price.to_i
    DB.execute("SELECT * from movie_tickets WHERE price = ?;", price_int).map do |row|
      MovieTicket.new(row)
    end
  end

  def initialize(args = {})
    @id = args["id"]
    @price = args["price"]
    @movie_id = args["movie_id"]
    @customer_id = args["customer_id"]
    # @@all << self
  end
end
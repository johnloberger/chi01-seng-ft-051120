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
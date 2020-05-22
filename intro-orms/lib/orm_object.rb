class OrmObject

  def self.all
    # binding.pry
    instance_rows = DB[:conn].execute("SELECT * from #{table_name};")
    # Each row from the DB connection is a hash with keys 'message' and 'username'
    instance_rows.map { |row| self.new(row) }
  end

  def self.table_name
    self.to_s.downcase + 's'
  end

  def self.find(id)
    # take in id,
    # get one record from db that has that id 
    # and return this class's instance representing it
    # or else return nil
    results = DB[:conn].execute("SELECT * FROM #{table_name} WHERE id = ? LIMIT 1;", id)
    if results[0]
      return self.new(results[0])
    else 
      return nil
    end
  end
end
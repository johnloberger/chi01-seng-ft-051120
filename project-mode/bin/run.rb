require_relative '../config/environment'
ActiveRecord::Base.logger = nil
# puts "hello world"

def clear_screen!
  puts "\e[H\e[2J"
end

clear_screen!
puts "Welcome to FungiFinders! Happy to see you."
puts "Who are you? Enter your name below to `sign in`"
puts
puts User.all.map { |u| u.name }
puts
print "name: "
chosen_name = gets.chomp

current_user = User.find_by(name: chosen_name)

clear_screen!
if current_user
  puts "Welcome, #{current_user.name}!" 

  puts "1. See your mushrooms, 2. Add a finding, 3. Edit a note, 4. Delete a finding, type 'exit' to leave."
  user_choice = gets.chomp

  while user_choice != "exit"
    case user_choice
    when "1"
      # seeing mushrooms
      puts "Here's what you've found so far:"
      puts current_user.mushrooms
    when "2"
      # adding a finding
      puts "Adding a finding now!"
    when "3"
      # editing notes on finding
      puts "Editing notes!"
    when "4"
      # deleting a finding
      puts "Deleting!"
    end

    puts "1. See your mushrooms, 2. Add a finding, 3. Edit a note, 4. Delete a finding, type 'exit' to leave."
    user_choice = gets.chomp
  end

else
  puts "Sorry! Couldn't log you in!"
end
# puts

# puts "All Mushrooms: ==========================================="

# puts Mushroom.all
# puts

# puts "All Findings: ==========================================="

# puts Finding.all
# puts

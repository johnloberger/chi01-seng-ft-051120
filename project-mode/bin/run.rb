require_relative '../config/environment'
ActiveRecord::Base.logger = nil
# puts "hello world"

def clear_screen!
  puts "\e[H\e[2J"
end

clear_screen!

current_user = CliMethods.set_current_user

clear_screen!

if current_user
  puts "Welcome, #{current_user.name}!" 

  user_choice = CliMethods.get_user_menu_choice

  while user_choice != "exit"
    current_user.reload
    case user_choice
    when "1"
      # seeing mushrooms
      puts "Here's what you've found so far:"
      puts current_user.mushrooms
    when "2"
      # adding a finding
      found_mushroom = CliMethods.select_mushroom_from_list

      puts "Please enter notes of your encounter!"

      my_notes = gets.chomp
      # CREATE action
      # Action to be done to database: insert a new findings row in db (Finding.create)
      # Main object involved: Finding
      # Other objects: User, Mushroom
      # Hardcoded example that works in console:
      finding = Finding.create(user_id: current_user.id, mushroom_id: found_mushroom.id, notes: my_notes)
      # Other steps needed:
      # - View users and pick one
      # - View mushrooms and pick one
      # - Add notes

      puts "Thank you! A new finding was created with id of #{finding.id}. Press enter to continue."
      gets.chomp
    when "3"
      finding = CliMethods.select_finding_to_edit(current_user)

      if finding
        puts "Great! What are the new notes you'd like to add?"
        new_notes = gets.chomp
        finding.update(notes: new_notes)
        puts "Thank you! The finding was updated. Press enter to continue."
        gets.chomp
      else
        puts "sorry, can't find that finding lol!"
      end
      # editing notes on finding
      # UPDATE action
      # Action to be done to database: update existing findings row in db (Finding.update)
      # Main object involved: Finding
      # Other objects: User
      # Hardcoded example that works in console:
      # finding.update(notes: "this gave me life")
      # Other steps: listing findings with ids, asking for new note
    when "4"
      # deleting a finding
      finding = CliMethods.select_finding_to_edit(current_user)

      finding.delete
      puts "Deleted! Press Enter to continue."
      gets.chomp
    when "5"
      # adding an expertise (create expertise)
      known_mushroom = CliMethods.select_mushroom_from_list
      # Expertise.create(mushroom: known_mushroom, expert: current_user)
      current_user.known_mushrooms << known_mushroom
      puts "Noted, you scholar, you! Press Enter to continue."
      gets.chomp
    end

    clear_screen! 

    user_choice = CliMethods.get_user_menu_choice
    
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

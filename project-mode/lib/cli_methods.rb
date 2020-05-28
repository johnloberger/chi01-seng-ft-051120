module CliMethods

  def self.set_current_user
    puts "Welcome to FungiFinders! Happy to see you."
    puts "Who are you? Enter your name below to `sign in`"
    puts
    puts User.all.map { |u| u.name }
    puts
    print "name: "
    chosen_name = gets.chomp
    User.find_by(name: chosen_name)
  end

  def self.get_user_menu_choice
    puts "1. See your mushrooms, 2. Add a finding, 3. Edit a note, 4. Delete a finding, 5. Announce expertise; type 'exit' to leave."
    gets.chomp
  end

  def self.select_finding_to_edit(user)
    user.findings.each do |finding|
      puts "#{finding.id}: #{finding.notes} (written about #{finding.mushroom.species})"
    end
      
    puts "please type a finding id:"
    finding_id = gets.chomp
    Finding.find(finding_id)
  end

  def self.select_mushroom_from_list
    puts "Please type the id of the mushroom:"
    Mushroom.all.each do |mushroom| 
      puts mushroom.list_info
    end
    puts
    print "id: "
    chosen_id = gets.chomp
    Mushroom.find(chosen_id)
  end
end
my_games = {
  :AC => "Assassin's Creed",
  :NFS => "Need For Speed",
  :FF => "Fifa Series",
}

puts "Welcome to The Game Collections System"
puts "You ready to Enter The System [y/n]"

answer = gets.chomp.downcase()
isReady = false

if (answer == "y")
  isReady = true
end

inLoop = true

if (isReady)
  while inLoop == true
    puts "-- Type 'add' to add a movie."
    puts "-- Type 'update' to update a movie."
    puts "-- Type 'display' to display all movies."
    puts "-- Type 'delete' to delete a movie."
    puts "-- Type 'quit' to delete a movie."

    choice = gets.chomp.downcase()
    case choice
    when "add"
      puts "Type The gamename abbreviation  you want to add as a symbol"
      game_name = gets.chomp.upcase().to_sym
      puts "Type the original name of the game"
      original_name = gets.chomp

      my_games[game_name] = original_name

      puts "The Game name has been saved successfully"
    when "display"
      my_games.each do |symbol, title|
        puts "#{symbol} => #{title}"
      end
    when "quit"
      inLoop = false
      puts "Hope You Enjoyed"
    end
  end
else
  puts "See you next time"
end

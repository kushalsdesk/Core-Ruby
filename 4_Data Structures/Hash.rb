=begin
    Hashes let us store data in a key-value pair 
    Though everyhting in Ruby is an object
    We have multiple syntaxes to set the key 
=end

my_hash = Hash.new

my_hash = {
    1 => "Random",
    :game => "AC",
    "desktop" => "Environment",
    key: "value"

}

puts my_hash

my_hashToArray = my_hash.to_a  # this would convert a string to n array

puts "my_hashToArray"
my_hashToArray.each do |ele|
    puts "The Array element is: #{ele}"
end
puts "myhashToArray end "

my_hashToArray.each do |key,value|
    puts " Key: #{key}, \n Value: #{value}"
end



=begin 
    it was generally recommended to use 
    the "hash rocket" (=>) syntax for creating hashes.
    But after 1.9 things start look like JS Object or Python Dictionary
    though everything in Ruby is Object but as this hash has other functionalities , I would still practice that hash rocket to respect the community and to read old docs and codebases
=end


### Symbols
=begin 
    We can certainly use strings as Ruby hash keys; as we’ve seen, there’s always more than one way to do something in Ruby. However, the Rubyist’s approach would be to use symbols.
=end

my_first_symbol = :first # this is a symbol , and its immutable

# This converts a string to symbol and vice-versa

:sasquatch.to_s
# ==> "sasquatch"
 
"sasquatch".to_sym
# ==> :sasquatch

# or

"hello".intern 
# ==> :hello

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!

symbols = Array.new

strings.each do |ele| 
  symbols.push(ele.intern)
end

symbols.each do |ele|
  puts ele
end


# Becoming more selective by passing some conditions to filter the hash result

movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 5,
    truman_show: 4,
    red_dawn: 1.5,
    skyfall: 4,
    alex_cross: 2,
    uhf: 1,
    lion_king: 3.5
  }
  # Add your code below!
  
  good_movies = movie_ratings.select { |name, rating | rating > 3}
  
 puts good_movies.select { |k,v| 
    k == :skyfall
}


# Just working with eiher key or value
my_hash = { one: 1, two: 2, three: 3 }
 
# working with keys
my_hash.each_key { |k| print k, " " }
# working with values
my_hash.each_value { |v| print v, " " }



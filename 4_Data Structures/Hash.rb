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



=begin 
    Though we can use the " key_name: " operator 
    but doing it with "":key_name => value " provide the
    feel for Developer Experience of another language 
    also for standard Ruby files or in industry production, 
    it's generally recommended to use 
    the "hash rocket" (=>) syntax for creating hashes.
=end

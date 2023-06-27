
# naming convention: Should start with a capital letter

class Book
  attr_accessor :title, :author, :pages
end
=begin
# creating objects with a default constructor
a constructor is a method for creating instances
=end

book1 = Book.new()

book1.title = "Harry Potter"
book1.author = "J.K. Rowling"
book1.pages = 400

book2 = Book.new()

book2.title = "Sherlock holmes"
book2.author = "Arthur Conan Doyle"
book2.pages = 400

# its not a good option to create instances with a default constructor

class ModernBook
  attr_accessor :title, :author, :pages

# parameterized constructor
  def initialize(title, author, pages)
    @title = title,
    @author = author,
    @pages = pages
  end

end

book3 = ModernBook.new("The Great Gatsby", "F. Scott Fitzgerald", 218)

# to see object values
puts book1.inspect
puts book2.inspect
puts book3.inspect

=begin
Check out the below code in the editor. See how some variables start with $, @, or @@? This helps mark them as global, instance, and class variables (respectively). We’ll explain these in the next section. Run the code to see how these different variables work!
=end

class Computer
$manufacturer = "Mango Computer, Inc."
@@files = {hello: "Hello, world!"}

  def initialize(username, password)
    @username = username
    @password = password
  end

  def current_user
    @username
  end

  def self.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.


## Inheritance

class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error


## Method overriding after Inheritance
class Creature
  def initialize(name)
    @name = name
  end

  def fight
    return "Punch to the chops!"
  end
end


class Dragon < Creature
  def fight
    return "Breathes fire!"
  end
end

## use of "super" keyword

class LandDragon < Creature
  def fight
    puts  "Instead of breathing fire!"
    super
  end
end

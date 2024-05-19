### Notes

=begin
# Example 1
class Student

# Any method defined inside a class will be associated with that class
# By default, all methods defined inside a class are going to be an "instance method"
  def instance_greeting
    puts "Hello, this is an instance method!"
  end

  def school
    # Can leave "puts" out and use it later on to print
    "RRC"
  end

# "self." is what make it a class method, instead of a instance method
  def self.class_greeting
    puts "I am a class method!"
  end

end

# Instance of Student class (object)
# Calling the "new" method and running the initializer, the constructor and building the class
bob = Student.new

# Two different ways to print out the result
Student.new.instance_greeting
bob.instance_greeting


puts bob.school


# Since "class_greeting" is a class method it must be associated with the class, not the instance of the class
Student.class_greeting
# Cannot call "class_greeting" directly on "bob"
bob.class_greeting
=end



# Example 2
# class Student

#   def greetings
#     @name = "Wally Glutton"
#     puts "#{@name} want Brainz!"
#   end

#   # This is a Getter
#   def name
#     @name
#   end

#   # This is a Setter
#   def name=(new_name)
#     @name = new_name
#   end

# end

# =begin
# # Instance of Student class (object)
# # Calling the "new" method and running the initializer, the constructor and building the class
# bob = Student.new

# # Two different ways to print out the result
# Student.new.instance_greeting
# bob.instance_greeting


# puts bob.school


# # Since "class_greeting" is a class method it must be associated with the class, not the instance of the class
# Student.class_greeting
# # Cannot call "class_greeting" directly on "bob"
# bob.class_greeting
# =end

# bob = Student.new

# bob.greetings
# puts bob.name

# bob.name = "Chanis"
# #puts bob.name

# bob.greetings

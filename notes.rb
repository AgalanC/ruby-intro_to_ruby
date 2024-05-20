### NOTES ###


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

# Two different ways to print out the result instance methods/functions for our example
Student.new.instance_greeting
bob.instance_greeting

# Without "puts" it will not print anything to the console
puts bob.school


# Since "class_greeting" is a class method it must be associated with the class, not the instance of the class
Student.class_greeting
# Will cause an error since it cannot call a class method, ".self.class_greeting" directly on "bob" because "bob" is associated to an instance of the class "Student"
bob.class_greeting





# Example 2
class Student
  # The "initialize" method is the preferred way to initialize instance variables
  def initialize(name)
    @name = name
  end

  # Instance variables are assigned using the "@" sign prior to the variable name
  def greetings
    # The line "@name = "Wally Glutton"" needs to be commented out or eliminated, otherwise if we want to change the name later on in the code it will not work due to the instance variable, "@name", being initialized to "Wally Glutton"
    # @name = "Wally Glutton"
    puts "#{@name} want Brainz!"
  end

=begin
  # This is a Getter
  def name
    @name
  end

  # This is a Setter
  def name=(new_name)
    @name = new_name
  end
=end

  # Getter and Setter shortcuts. Make sure to comment out the Getter and Setter above to see how they work
  # The line below is the same as "attr_accessor(name)"
  attr_accessor :name
end


# For our example, if using the "initialize" method/function that requires a variable, we have to specify the value of that variable/argument
bob = Student.new("Baby Wally")

# Instance of Student class (object)
# Calling the "new" method and running the initializer, the constructor and building the class
# Comment this line if using the line above, "initialize" method
# bob = Student.new

# The value of instance variable name, "@name", is being set/initialized here and not inside the "greetings" instance method as it was prior initialized, for the simple fact that it can be renamed at any time in the code as desired if necessary
# If this line gets comment out the instance variable name, "@name", will be set to "Baby Wally"
bob.name = "Wally"

# Calling the instance method/function "greetings" and it also prints it out to the console, in otherwords, there is no need to use "puts" in this scenario
bob.greetings

# This is calling the name method, "bob.name()", in other words, it is looking for the Getter. Also, this will ONLY work when the method "name" gets defined. The "puts" must be used in order to print it out to the console
puts bob.name

# These two lines go together otherwise it won't print out the desired result to the console. Or it can also be combined like this - "puts bob.name = "Chanis""
bob.name = "Chanis"
puts bob.name

bob.greetings





# Example 3
=begin
This is an example of how Ruby allows users to redefine/reopen classes. This Ruby feature is something that most other languages do not include. This Ruby feature allows users to redefine classes and define new stuff on them, classes, and still work.

In this case, inside the "Hal" class, it is defining the "sing" method and then defining the "initialize" method. The end result will be a class named "Hal" that has both the "sing" method and an "initialize" method, it's going to combine the two classes.

The difference being that all the code before the "initialize" method will ONLY include/have the "sing" method and all the code after the "sing" method will have/include both the "sing" and "initialize" methods.

Ruby allows users to do this to any class, including system classes like built-in classes to the language. Users can redefine core classes and also redefining methods. For example if there was something that "Rails" was doing that you didn't like that you wanted to change, you can literally change it at any point.

Additionally, users can change any of the libraries and all their functionality at any point. But again, in almost all cases it is NOT recommended to do so. Thumb of rule is to NOT redefine any of the "Rails" classes and properties on purpose, since it will not give any warnings about this. That is because this is simply a Ruby feature.

Just be careful when defining classes, make sure not to use a name that's already taken by Ruby, because it could very much redefine something. Which then can cause code to completely break without even knowing why.
=end

=begin
class Hal
  def sing
    puts "Daisy, Daisy, over the ocean blue..."
  end
end

print "hal_one sez: "
hal_one = Hal.new
hal_one.sing

class Hal
  def initialize
    puts "Hello Dave. Do you want to hear a song?"
  end
end

print "hal_two sez: "
hal_two = Hal.new
hal_two.sing
=end

# Same as the code below:

=begin
class Hal
  def sing
    puts "Daisy, Daisy, over the ocean blue..."
  end

  def initialize
    puts "Hello Dave. Do you want to hear a song?"
  end
end

print "hal_one sez: "
hal_one = Hal.new
hal_one.sing

print "hal_two sez: "
hal_two = Hal.new
hal_two.sing
=end

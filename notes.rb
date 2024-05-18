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







U1:

###   Name: Armando Galán Cedeño
###   Assignment: U1 - Intro to Ruby
###   Instructor: Diogo Iwasaki
###   Course: Agile Full Stack Web Development



# Number 1

# Using a single puts statement build the following
# sentence using only data from the carl hash and the
# sagan array along with some string interpolation.
#
# We are a way for the cosmos to know itself.

carl  = {
          :toast => 'cosmos',
          :punctuation => [ ',', '.', '?' ],
          :words => [ 'know', 'for', 'we']
        }

sagan = [
          { :are => 'are', 'A' => 'a' },
          { 'waaaaaay' => 'way', :th3 => 'the' },
          'itself',
          { 2 => ['to']}
        ]

###NOTE### - When sentences are constructed using a single string interpolation within "puts", it will result in a space being included between each string word. The reason for this is because Ruby's string interpolation includes spaces between the interpolated variables/literals.
puts "#{carl[:words][2].capitalize} #{sagan[0][:are]} #{sagan[0]['A']} #{sagan[1]['waaaaaay']} #{carl[:words][1]} #{sagan[1][:th3]} #{carl[:toast]} #{sagan[3][2][0]} #{carl[:words][0]} #{sagan[2]} #{carl[:punctuation][1]}"

###NOTE### - "As mentioned above you can stick strings together by using the + operator." source at https://ruby-for-beginners.rubymonstas.org/bonus/string_interpolation.html
puts "#{carl[:words][2].capitalize} #{sagan[0][:are]} #{sagan[0]['A']} #{sagan[1]['waaaaaay']} #{carl[:words][1]} #{sagan[1][:th3]} #{carl[:toast]} #{sagan[3][2][0]} #{carl[:words][0]} #{sagan[2]}" + "#{carl[:punctuation][1]}"



# Number 2

=begin
Create an array of hashes named ‘ghosts’ to hold the following information:

Inky is 4 years old, loves reindeers and has 25 dollars in the bank.

Pinky is 5 years old, loves garden tools and has 14 dollars in the bank.

Blinky is 7 years old, loves ninjas and has 18.03 dollars in the bank.

Clyde is 6 years old, loves yarn and has 0 dollars in the bank.
=end

# Initialization of array of hashes
ghosts = [

          { name: "Inky", age: 4, loves: "reindeers", net_worth: 25 },
          { name: "Pinky", age: 5, loves: "garden tools", net_worth: 14 },
          { name: "Blinky", age: 7, loves: "ninjas", net_worth: 18.03 },
          { name: "Clyde", age: 6, loves: "yarn", net_worth: 0 }
        ]

# ghosts.each - calling method "each" that iterates over each element in the "ghosts" array.
# |ghost| - block variable that holds the current element (a hash representing a ghost) for each iteration.
# ghost_info - temporary string variable used to concatenate the attributes of each ghost (name, age, loves, and net_worth) into a single string.
ghosts.each do |ghost|
  ghost_info  = "#{ghost[:name]} is #{ghost[:age]} years old, "
  ghost_info += "loves #{ghost[:loves]} and "
  ghost_info += "has #{ghost[:net_worth]} dollars in the bank."
  puts ghost_info
end

=begin
ghosts.each do |ghost|
  ghost_info  = "#{ghost[:name]} is #{ghost[:age]} years old, loves #{ghost[:loves]} and has #{ghost[:net_worth]} dollars in the bank."
  puts ghost_info
end
=end

=begin
puts "#{ghosts[0][:name]} is #{ghosts[0][:age]} years old, loves #{ghosts[0][:loves]} and has #{ghosts[0][:savings]} dollars in the #{ghosts[0][:money_location]}."

puts "#{ghosts[1][:name]} is #{ghosts[1][:age]} years old, loves #{ghosts[1][:loves]} and has #{ghosts[1][:savings]} dollars in the #{ghosts[1][:money_location]}."

puts "#{ghosts[2][:name]} is #{ghosts[2][:age]} years old, loves #{ghosts[2][:loves]} and has #{ghosts[2][:savings]} dollars in the #{ghosts[2][:money_location]}."

puts "#{ghosts[3][:name]} is #{ghosts[3][:age]} years old, loves #{ghosts[3][:loves]} and has #{ghosts[3][:savings]} dollars in the #{ghosts[3][:money_location]}."
=end



# Number 3

require 'net/http'
require 'json'
require 'pp'

# Fetch and parse the JSON data from the dog.ceo API
url = 'https://dog.ceo/api/breeds/list/all' # URL of the API endpoint providing the list of all dog breeds
uri = URI(url) # Create a URI object from the URL string
response = Net::HTTP.get(uri) # Perform an HTTP GET request to fetch the data from the API
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data (hash)
# pp dog_breeds # pp stands for pretty print.

breeds = dog_breeds['message'] # Extract the breeds data from the parsed data, in other words, from the 'message' key in the parsed JSON

# Iterate over each breed and its associated sub-breeds in the breeds hash


# breeds.each - calling method "each" that iterates over each element in the "breeds" hash.
# |breed, sub_breed| - block variables that hold the current element/current collection item. For example, "breed" will be assigned the first element of the current collection item. On the other hand, "sub_breed" will be assigned the second element of the current collection item.
breeds.each do |breed, sub_breed|
  # Check if the current breed has no sub-breeds (sub_breed)
    # "sub_breed" is an array that contains the sub-breeds of the current breed being iterated over
    # For a breed with no sub-breeds, "sub_breed" would be an empty array []
    # The "empty?" method is called to check if an object is empty, in other words, meaning if it has NO elements; if it has a length of zero
    # It returns "true" if the array has no elements, in other words, if its length is zero
    # It returns "false" if the array contains one or more elements
  if sub_breed.empty? ###NOTE### THE "?" SIGN RETURNS A BOOLEAN
    # Print the breed name in uppercase if there are no sub-breeds (sub_breed), and is prefixed with an asterisk *
    puts "* #{breed.upcase}"
  else
    # Print the breed name in uppercase if there are sub-breeds (sub_breed), and is prefixed with an asterisk *
    puts "* #{breed.upcase}"
    # Iterate over each sub-breed of the current breed
    sub_breed.each do |sub_breeds|
      # Print the sub-breed (sub_breeds) name capitalized, indented, and prefixed with an dash (-)
      puts "  - #{sub_breeds.capitalize}"
    end
  end
end



# Number 4

require 'net/http'
require 'json'
require 'pp'

# Fetch and parse the JSON data from the city's (Winnipeg) tree dataset
# url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?%24limit=30'
# url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json' #
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000' #
uri = URI(url)
response = Net::HTTP.get(uri)
trees = JSON.parse(response) # Convert JSON data into Ruby data (hash)

ash_tree_count = 0 # Initializing the counter for ash trees

# Iterate through the list of trees
# trees.each - calling method "each" that iterates over each element in the "trees" array.
# |tree| - block variable that holds the current element (a hash representing a tree type) for each iteration.
trees.each do |tree|
  # Check if the "tree" hash contains the key "common_name"
  # The && operator ensures that both the condition on its left and the condition on its right must be true for the overall condition to be true
  # Convert key "common_name" to lowercase
  # Check if the word "ash" is part of the key "common_name"
  if tree["common_name"] && tree["common_name"].downcase.include?("ash")

    ###NOTE###
    # Shorthand for line 254
    # if tree["common_name"]&.downcase.include?("ash") ### ALTERNATIVE WAY TO OBTAIN THE SAME RESULT AS LINE 253

    ash_tree_count += 1 #  # Increment the count of ash tree
  end
end

puts "The city of Winnipeg has #{ash_tree_count} Ash trees."

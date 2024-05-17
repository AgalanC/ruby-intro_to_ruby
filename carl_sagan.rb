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

puts "#{carl[:words][2].capitalize} #{sagan[0][:are]} #{sagan[0]['A']} #{sagan[1]['waaaaaay']} #{carl[:words][1]} #{sagan[1][:th3]} #{carl[:toast]} #{sagan[3][2][0]} #{carl[:words][0]} #{sagan[2]} #{carl[:punctuation][1]}"



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

breeds = dog_breeds['message']

# Iterate over each breed and its associated sub-breeds in the breeds hash
breeds.each do |breed, sub_breed|
  if sub_breed.empty?
    puts "* #{breed.upcase}"
  else
    puts "* #{breed.upcase}"
    sub_breed.each do |sub_breeds|
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

ash_tree_count = 0

# Iterate through the list of trees
trees.each do |tree|
  if tree["common_name"] && tree["common_name"].downcase.include?("ash")
    # if tree["common_name"].downcase.include?("ash") ### ALTERNATIVE WAY WITHOUT THE && OPERATOR
    ash_tree_count += 1 #  # Increment the count of ash tree
  end
end

puts "The city of Winnipeg has #{ash_tree_count} Ash trees."

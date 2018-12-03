dial_book = {

  "newyork" => "212",

  "newbrunswick" => "732",

  "edison" => "908",

  "plainsboro" => "609",

  "sanfrancisco" => "301",

  "miami" => "305",

  "paloalto" => "650",

  "evanston" => "847",

  "orlando" => "407",

  "lancaster" => "717"

          }

# Get city names from the hash

def get_city_names(somehash)

  return somehash.keys

end

# Get area code based on given hash and key

def get_area_code(somehash, key)

  return somehash[key]

end

# Execution flow

loop do
  puts "Do you want to look up an area code for a city based on a city name Y/N?"
  print "Selection: "
  input = gets.chomp.downcase
  break if input != "y"

  puts
  puts "Which city do you wish to look up?"
  city_names = get_city_names(dial_book)
  puts city_names
  print "Enter City selection: "
  city_name = gets.chomp.downcase
  if dial_book.include?(city_name) != true
    puts "Invalid city name, try again."
  else
  area_code = get_area_code(dial_book, city_name)
  puts "The area code for #{city_name} is #{area_code}"
 end


end

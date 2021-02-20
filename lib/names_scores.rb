def read_file(file_name)
  file_path = File.join(File.dirname(__FILE__), file_name)
  File.open(file_path, 'r+').read
end

def get_names(file_data)
  file_data.split(',').map do |name|
    name.gsub('"', '').upcase
  end
end

def alphabetical_value(name)
  total = 0

  # each_byte gets the ASCII key for each letter, take away 64 to get position in alphabet (only for uppercase letters)
  name.each_byte do |byte|
    total += byte - 64
  end

  total
end

def name_score(name, index)
  # Add 1 to array index as position in list starts from 1, not 0
  alphabetical_value(name) * (index + 1)
end

def total_scores(names)
  total = 0

  names.each_with_index do |name, index|
    total += name_score(name, index)
  end

  total
end

file_data = read_file('names.txt')
sorted_names = get_names(file_data).sort
total_score = total_scores(sorted_names)

puts '========================================='
puts "The total score of the names is #{total_score}"
puts '========================================='

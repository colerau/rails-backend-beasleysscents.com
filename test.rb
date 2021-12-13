# iterate through list

list = ["apple", "orange", "pear", "pineapple"]

arr = list.map do |index|
  index.slice(2)
end

puts arr
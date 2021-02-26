#!/usr/bin/ruby

amount = ARGV[0].to_i

items = (0..amount).to_a
items.shuffle!

str = ""
for item in items
  str += item.to_s + "\n"
end

file = File.open("randomized_list.txt", "w") {|f| f.write(str)}

puts "Färdig, se randomized_list.txt"

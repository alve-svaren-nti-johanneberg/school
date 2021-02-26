
file = File.open("randomized_list.txt")
lines = file.readlines
file.close
$items = []
for line in lines
  $items << line.chomp.to_i
end

def get_randomized_list()
  return $items
end

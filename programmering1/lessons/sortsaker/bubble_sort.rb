#!/usr/bin/ruby

require_relative "./read_random_list"

def bubble_sort(array)
  stop = array.length - 1
  while stop > 0
    i = 0
    while i < array.length - 1
      if array[i] > array[i+1]
        tmp = array[i]
        array[i] = array[i+1]
        array[i+1] = tmp
      end
      i += 1
    end
    stop -= 1
  end
  return array
end

start = Time.now
bubble_sort(get_randomized_list())
puts "Sorteringen tog #{Time.now-start} sekunder"

require_relative "./switchplace.rb"

def selection_sort(arr)
    maxi = arr.length - 1
    for i in 0..maxi
        min_index = i
        for j in (i+1)..(maxi)
            if arr[j] < arr[min_index]
                min_index = j
            end
        end
        if min_index != i
            switchplace(arr, i, min_index)
        end
    end
    return arr
end

require_relative "../lessons/sortsaker/read_random_list.rb"

list = get_randomized_list()
start = Time.now 
selection_sort(list)
puts "Selection sort tog #{Time.now - start} sekunder"

require_relative "./switchplace.rb"

def selection_sort(arr)
    for i in 0..arr.length - 1
        min_index = i
        for j in (i+1)..(arr.length - 1)
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

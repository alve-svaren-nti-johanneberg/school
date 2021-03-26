require_relative "./switchplace.rb"

def bubble_sort(arr)
    stop = arr.length - 1
    while stop > 0
        i = 0
        while i < arr.length - 1
            if arr[i] > arr[i+1]
                switchplace(arr, i, i+1)
            end
            i += 1
        end
        stop -= 1
    end
    return arr
end


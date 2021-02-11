def count(array, value)
    itemcount = 0
    for item in array
        if item == value
            itemcount += 1
        end
    end
    return itemcount
end

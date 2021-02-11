def contains(array, value)
    for item in array
        if item == value
            return true
        end
    end

    return false
end
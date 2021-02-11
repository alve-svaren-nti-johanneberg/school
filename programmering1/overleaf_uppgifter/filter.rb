def filter(array, value)
    filtered = []
    for item in array
        if item == value
            filtered << item
        end
    end
    return filtered
end

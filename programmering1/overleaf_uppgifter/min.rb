def min(numbers)
    minimum = nil
    for number in numbers
        if minimum == nil || number < minimum
            minimum = number
        end
    end
    return minimum
end

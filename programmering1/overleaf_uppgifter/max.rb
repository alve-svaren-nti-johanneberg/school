def max(numbers)
    maximum = nil
    for number in numbers
        if maximum == nil || number > maximum
            maximum = number
        end
    end
    return maximum
end
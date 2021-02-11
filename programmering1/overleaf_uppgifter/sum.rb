def sum(numbers)
    if not numbers.class == Array
        raise TypeError, "'numbers' must be an array"
    end

    sum = 0
    for number in numbers
        if number.is_a? Numeric
            sum += number
        else
            raise TypeError, "'numbers' must only contain numeric values"
        end
    end
    return sum
end

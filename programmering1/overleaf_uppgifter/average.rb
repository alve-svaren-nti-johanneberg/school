require_relative "./average_number.rb"

def average(numbers)
    if numbers.class != Array
        raise TypeError, "'numbers' must be an array"
    end

    for number in numbers
        if !number.is_a? Numeric
            raise TypeError, "'numbers' must only contain numeric values"
        end
    end

    return average_number(numbers)
end
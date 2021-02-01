def average_number(numbers)
    sum = 0
    for number in numbers do
        sum += number
    end

    return sum.to_f/numbers.length()
end
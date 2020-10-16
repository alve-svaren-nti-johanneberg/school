require "./is_even.rb"

def sum_even(num)
    sum = 0
    for i in 1..num do
        if is_even(i)
            sum += i
        end
    end
    return sum
end
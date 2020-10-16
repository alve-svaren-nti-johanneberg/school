require "./smallest_of_two.rb"

def smallest_of_three(num1, num2, num3)
    small = smallest_of_two(num1, num2)
    return small < num3 ? small : num3
end
require "./smallest_of_two.rb"

def smallest_of_three(num1, num2, num3)
    if num1 < num2 && num1 < num3
        return num1
    elsif num2 < num1 && num2 < num3
        return num2
    end
    return num3
end
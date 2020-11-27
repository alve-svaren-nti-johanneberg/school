#!/usr/bin/ruby

expression = /[+-\/*%]/
operations = {
    "+" => lambda {|n1,n2|n1+n2},
    "-" => lambda {|n1,n2|n1-n2},
    "/" => lambda {|n1,n2|n1/n2},
    "*" => lambda {|n1,n2|n1*n2},
    "%" => lambda {|n1,n2|n1%n2},
}



while true
    # +1+2+3
    print "> "
    user_input = "+" + gets.chomp
    break if ["q", "quit", "exit"].include? user_input.downcase
    
    total = 0
    while true
        operator = user_input[0]
        method = operations[operator]
        # => +
        # num = 1, user_input = +2+3
        num, user_input = user_input[1..-1].split(expression, 2)
        
        total = method.call(total, num.to_i)
        if not user_input
            break
        end
        user_input = operator + user_input
        # puts user_input
        # exit
    end
    puts total
end



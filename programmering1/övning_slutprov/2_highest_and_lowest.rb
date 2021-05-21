def main
    highest = nil
    lowest = nil
    puts "Skriv 'q' för at avsluta"
    while true
        print "Skriv ett heltal> "
        input = gets.chomp
        if input == "q"
            break
        end
        num = input.to_i
        if highest == nil || num > highest
            highest = num
        end
        if lowest == nil || num < lowest
            lowest = num
        end
        puts "Högsta nummret är nu #{highest} och lägsta är #{lowest}"
    end
end

main()
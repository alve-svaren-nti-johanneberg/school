# description: Lägger till en ny rad i en redan existerande fil och skriver ut innehållet
# arg1: String - namnet på filen som du vill lägga till i
# arg2: String - innehållet du vill lägga till i filen
# returns: nil
# todo1: skriva ut innehållet i ett snyggare format
# todo2: lägga till ett sätt att ta sig ur input-loopen utan att uppnå recursion depth
# by: Alve Svarén
# date: 2021-05-12
def add_to_file(file_name, string)
    if !file_name.is_a?(String)
        raise TypeError.new "Argument file_name must be a String"
    end

    if !string.is_a?(String)
        raise TypeError.new "Argument string must be a String"
    end

    if !File.exist?(file_name)
        puts "Filen #{file_name} finns inte"
        puts "Ange ett nytt filnamn:"
        print "> "
        return add_to_file(gets.chomp, string)
    end

    file = File.open(file_name, "a+")
    file.puts string
    file.rewind
    puts "Filen #{file_name} innehåller nu:"
    puts file.read

    return
end

print "> "
add_to_file("test", gets)

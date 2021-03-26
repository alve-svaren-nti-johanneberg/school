def add_to_shopping_list file_name, item
    file = File.open(file_name, "a+")
    file.puts(item)
    file.rewind

    items = file.readlines()
    puts "Din inköpslista innehåller nu:"
    for item in items do
        print "  - " + item
    end
    return nil
end
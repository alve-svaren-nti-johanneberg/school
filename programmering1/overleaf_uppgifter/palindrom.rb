def palindrom(text)
    reversed = ""
    for i in 1..text.length do
        reversed += text[-i]
    end
    return reversed == text
end

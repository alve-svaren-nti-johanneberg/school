def length_of_string(text)
    new_text = ""
    i = 0
    while new_text != text
        new_text += text[i]
        i+=1
    end
    return i
end

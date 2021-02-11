def split_char(str, sep)
    if str.class != String
        raise TypeError, "'str' must be a string"
    end

    if sep.class != String || sep.length != 1
        raise TypeError, "'sep' must be a string of length 1"
    end

    parts = []

    part = ""
    for char in str.each_char
        if char == sep
            parts << part
            part = ""
        else
            part += char
        end
    end
    parts << part

    return parts
end

def unique(array)
    filtered = []
    for item in array
        if not filtered.include? item
            filtered << item
        end
    end

    return filtered
end

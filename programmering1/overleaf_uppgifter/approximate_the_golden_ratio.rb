def approximate_the_golden_ratio(to_count)
    last_num = 1
    num = 1
    for i in 0..to_count do
        tmp = num + last_num
        last_num = num
        num = tmp
    end
    return num/last_num.to_f
end

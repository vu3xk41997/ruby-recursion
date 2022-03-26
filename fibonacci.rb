def fibs(num)
    fibs_array = []
    i = 0
    for i in 0..num
        if i == 0
            fibs_array << i
        elsif i == 1
            fibs_array << i
        else
            fibs_array << fibs_array[i - 2] + fibs_array[i - 1]
        end
    i += 1
    end
    fibs_array
end

p fibs(8)


def fibs_rec(num)
    return [0] if num == 0
    return [0,1] if num == 1
    array = fibs_rec(num - 1)
    array << array[-2] + array[-1]
end
    
p fibs_rec(8)

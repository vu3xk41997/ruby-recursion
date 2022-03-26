def merge_sort(array)
    if array.length < 2
        return array
    else
        l_array = merge_sort(array.take(array.length/2))
        r_array = merge_sort(array.drop(array.length/2))

        l = 0
        r = 0
        i = 0
        
        # Copy data to temp arrays l_array[] and r_array[]
        while l < l_array.length && r < r_array.length do
            if l_array[l] < r_array[r]
                array[i] = l_array[l]
                l += 1
            else
                array[i] = r_array[r]
                r += 1
            end
            i += 1
        end

        # Checking if any element was left
        while l < l_array.length do
            array[i] = l_array[l]
            l += 1
            i += 1
        end

        while r < r_array.length do
            array[i] = r_array[r]
            r += 1
            i += 1
        end
        array
    end
end


p merge_sort([60, 20, 10, 40, 50, 80, 70, 90, 30])
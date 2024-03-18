def bubble_sort(arr)
    loop do 
        swapped=false
        (arr.length-1).times do |i|
            if arr[i]>arr[i+1]
                arr[i],arr[i+1]= arr[i+1],arr[i]
                swapped=true
            end
        end
        break if not swapped
    end
    arr
end
unsorted_arr=[4,3,78,2,0,2]
print bubble_sort(unsorted_arr)
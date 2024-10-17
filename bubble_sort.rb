 def bubble_sort(array)

    # Get the length of array
    length = array.length 

    loop do
        # Initialize a variable to track if any swaps were made
        swapped = false
         # Iterate through the array up to the second to the last element
        (length - 1).times do |i|
            # Compare the current element with the succeeding element
            if array[i] > array[i + 1]
                 # Swap if the current element is greater than the next element
                array[i], array[i + 1] = array[i + 1], array[i]
                swapped = true  
            end
        end
         # If no swaps were made in the last pass, the array is sorted
        break unless swapped
    end
    # Return the sorted array
    array  
 end

 # Example
 print bubble_sort([4,3,78,2,0,2])
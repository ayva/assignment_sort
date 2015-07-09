def insert(array)
    # value is the value of array[right_index + 1]
    # right_index is the furthest right sorted element

    # Step through sorted elements right to left.
    # As long as your value is less than the element
    # at array[i] and you still have elements
    i = 0
    while(i >= 0 && i < array.length)
      # copy the element

      unless array[i+1].nil?
        while !array[i].nil? != 0 && array[i] > array[i+1]
          value = array[i+1]
          array[i+1] = array[i]
          array[i] = value
          puts "array = #{array}"
          puts "i = #{i}"
          break if i-1 < 0 
          i -= 1

        end
      end
      
      i += 1
    end


    array
end


arr = [2,3,1,-5,7,4]

p insert(arr)




def bubble(array)
    
    

    #loop until array is sorted = no swap happend

    #loop and swap neighbours and count swaps
    counter = 1
    
    until counter==0
      #[1,2,4,3]
      i = 0
      counter = 0
      while i < array.length-1
        
        if array[i] > array[i+1]
          # copy the element
          value = array[i+1]
          array[i+1] = array[i]
          array[i] = value
          counter+=1
          
        end
        i+=1
        
      end
      
      
    end
  array
    
end


arr = [2,3,1,-5,7,4]

p bubble(arr)

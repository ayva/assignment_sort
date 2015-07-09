

# [5,4,3,2,1]
def mergeSort(array) 
    # // if the array is one element long, just return it
    return array if array.length == 1 
    # // mergeSort() the left half of the array
    array_left = array[0..array.length/2-1]
    array_right = array[array.length/2..array.length-1]
    
    array_left = mergeSort(array_left) 
    # // mergeSort() the right half of the array
    array_right = mergeSort(array_right) 
    # // merge() the two halves
    merge(array_left,array_right)
    # // return the merged array
    
end

def merge(leftArr, rightArr)

    newarr = []

    # // compare leftArr[0] and rightArr[0]
    until leftArr.empty? || rightArr.empty?      
         
      leftArr[0] < rightArr[0] ? newarr << leftArr.shift : newarr << rightArr.shift
      
    end

      newarr << leftArr.shift until leftArr.empty?
      newarr << rightArr.shift until rightArr.empty?

    newarr

end
array = [5,4,3,2,1]
print mergeSort(array) 

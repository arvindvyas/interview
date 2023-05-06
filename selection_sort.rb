#Select sort 
 # Merge and quick sort, selection sort is very slow. Each value needs to be iterated over once, and if we have n values in the array, that easily becomes O(n2). It's extremely ineffective on large lists and performs worse than many of the other sorting algorithms.

 # it's space complexity is O(1)
   # time complexity is O(n2) average case run time 
   # O(n2) worst case run time 

def selection_sort(array)
  current_minimum = 0 
  while current_minimum < array.length - 1
    smallest_value_index = find_smallest_value_index(array, current_minimum)
    array[current_minimum], array[smallest_value_index] = array[smallest_value_index], array[current_minimum]
    current_minimum += 1
  end 
  return array
end


def find_smallest_value_index(array, current_minimum)
  smallest_value = array[current_minimum]
  smallest_index = current_minimum

  while current_minimum < array.length
    if array[current_minimum] < smallest_value
      smallest_value = array[current_minimum]
      smallest_index = current_minimum
    end
    current_minimum += 1
  end

  return smallest_index
end



def find_smallest_value_index(array, current_minimum)
  smallest_value = array[current_minimum]
  smallest_index = current_minimum
    while current_minimum < array.length
      if array[current_minimum] < smallest_value
        smallest_value = array[current_minimum]
        smallest_index = current_minimum
      end
    current_minimum += 1
    end
    return smallest_index
end 

strings = ["things", "thing", ""]

def sort some_array # This "wraps" recursive_sort.
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array # Your fabulous code goes here.
  i = 0
  while i < unsorted_array.length
      if unsorted_array[i] < unsorted_array[i + 1]
        sorted_array[i] = unsorted_array[i]
      elsif unsorted_array[i] > unsorted_array[i + 1]
        sorted_array[i] = unsorted_array[i + 1]
        sorted_array[i + 1] = unsorted_array[i]
      end
      i += 1
  end
  sorted_array
end

puts(sort(strings))

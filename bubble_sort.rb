unsorted_list = [4, 6, 12, 7, 2, 18, 1, 3]

def bubble_sort(list, swaps = false) 
  list.each_with_index do |val, idx|
    if (idx + 1) <= (list.length - 1)
      if val > list[idx + 1]
        list.insert(idx, list.delete_at(idx + 1))
        swaps = true
      else
          next
      end
    end
  end
  swaps == true ? bubble_sort(list) : list
end

p bubble_sort(unsorted_list)
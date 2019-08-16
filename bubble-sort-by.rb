def bubble_sort_by!(list)
    last = list.size
    loop do
      flag = false
      current = 1
      while current < last
        compare = block_given? ? yield(list[current], list[current - 1]) : list[current] < list[current - 1]
        if compare < 0
          list[current], list[current - 1] = list[current - 1], list[current]
          flag = true
        end
        current += 1
      end
      break if !flag
      last -= 1
    end
    list
  end
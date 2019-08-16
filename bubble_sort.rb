def bubble_sort!(list)
  last = list.size
  loop do
    flag, current = false, 1
    while current < last
      if list[current] < list[current - 1]
        list[current], list[current - 1] = list[current - 1], list[current]
        flag = true
      end
      current += 1
    end
    break if !flag
    last -= 1
  end; list
end
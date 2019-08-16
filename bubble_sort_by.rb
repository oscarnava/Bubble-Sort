def bubble_sort_by!(list)
  last = list.size
  loop do
    flag, current = false, 0
    while (current += 1) < last
      list[current], list[current - 1], flag = list[current - 1], list[current], true if (block_given? ? yield(list[current], list[current - 1]) : list[current] < list[current - 1]) < 0
    end
    break if !flag
    last -= 1
  end
  list
end
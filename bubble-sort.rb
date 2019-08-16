def bubble_sort(list)
  last = list.size
  loop do
    flag = false
    current = 1
    while current < last
      if list[current] < list[current - 1]
        list[current], list[current - 1] = list[current - 1], list[current]
        flag = true
      end
      current += 1
    end
    print list
    print "\n"
    break if !flag
    last -= 1
  end
  list
end

print bubble_sort([1, 2, 5, 4])

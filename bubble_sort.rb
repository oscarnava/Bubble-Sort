# frozen_string_literal: true

def bubble_sort!(list)
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
    break unless flag

    last -= 1
  end; list
end

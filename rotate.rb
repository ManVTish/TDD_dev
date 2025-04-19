def rotate_elements(n, arr)
  return 'Cannot operate on empty array' if arr.empty?

  min_element = lambda do |a|
    min = a[0]
    (1...a.length).each do |i|
      min = a[i] if a[i] < min
    end
    min
  end

  arr_value = arr.dup
  while arr_value[0] != min_element.call(arr_value)
    arr_value = arr_value[1..-1] + [arr_value[0]]
  end

  arr_value
end

# Example usage (uncomment to run directly)
# n = 5
# arr = [3, 2, 1, 5, 4]
# p rotate_elements(n, arr)

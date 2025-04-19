def min_element(arr)
  min = arr[0]
  (1...arr.length).each do |i|
    min = arr[i] if arr[i] < min
  end
  min
end

def rotate_elements(n, arr)
  return 'Cannot operate on empty array' if arr.empty?

  arr_value = arr.dup
  while arr_value[0] != min_element(arr_value)
    arr_value = arr_value[1..-1] + [arr_value[0]]
  end

  arr_value
end

# Example usage (uncomment to run directly)
# n = 5
# arr = [3, 2, 1, 5, 4]
# p rotate_elements(n, arr)

# frozen_string_literal: true

def merge(arr, merged = [])
  return arr if arr.length < 2

  left = merge(arr[0..arr.length / 2 - 1])
  right = merge(arr[arr.length / 2..-1])
  until left.empty? || right.empty?
    left[0] <= right[0] ? merged << left.shift : merged << right.shift
  end
  merged += right += left
end

p merge([2, 5, 7, 3, 1, 6, 89, 23, 45, 11, 2])

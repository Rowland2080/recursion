def merge_sort(array)
  return array if array.length < 2
  mid_point = array.length/2
  first_array = merge_sort(array[0...mid_point])
  second_array = merge_sort(array[mid_point..-1])
  merge(first_array,second_array)
end

def merge(a,b)
  merged_array = []
  while a.size != 0 && b.size != 0
    merged_array << (a[0] <= b[0] ? a.shift : b.shift)
  end
  merged_array << a.shift while a.size != 0
  merged_array << b.shift while b.size != 0
  merged_array
end

a = 20.times.map {|i| i = rand(0..200)}
p merge_sort(a)

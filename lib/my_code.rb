def map(source_array)
  index = 0 
  result = []
  while index < source_array.length do
    result << yield(source_array[index])
    index += 1 
  end
  result
end

def reduce(source_array, starting_point = nil)
  if starting_point
    total = starting_point
    index = 0 
  else
    total = source_array[0]
    index = 1 
  end
  while index < source_array.length do
    total += yield(source_array[index])
    #total = yield(total, source_array[index])
    index += 1 
  end
  total
end
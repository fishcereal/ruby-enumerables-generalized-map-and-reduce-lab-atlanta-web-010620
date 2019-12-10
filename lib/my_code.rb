# Your Code Here
def map(array)
  i = 0 
  while i < array.length do 
    array[i] = yield(array[i])
    i+=1 
  end
  return array 
end

def reduce (array,starting_value=0)
  if starting_value == nil 
    starting_value = 0 
  end 
  i = 0 
  num = starting_value
  while i < array.length do 
    num = yield(array[i],num)
    i+=1 
  end
  return num
end 

# Failure/Error: expect(reduce(source_array){|memo, n| memo + n}).to eq(6)
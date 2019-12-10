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
  grand_total = 0 
  num = 0 
  while i < array.length do 
    num = yield(num,array[i])
    # grand_total = yield(array[i],starting_value)
    i+=1 
  end 
  
  # yield(grand_total,starting_value)
  return grand_total+starting_value
  
end 

# Failure/Error: expect(reduce(source_array){|memo, n| memo + n}).to eq(6)
# Your Code Here
def map(array)
  i = 0 
  while i < array.length do 
    array[i] = yield(array[i])
    i+=1 
  end
  return array 
end

def reduce (array,starting_value=nil)
  if starting_value != nil 
    num = starting_value
  else 
    num = 0 
  end 
  i = 0 
  while i < array.length do 
    num = yield(array[i],num)
    i+=1 
  end
  if num == nil 
    type(num)
  end
  return num
end 
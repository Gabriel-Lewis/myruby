def map_me(thing)
  end_value = thing.each do |i|
    i * i
  end
  end_value
end
integers = [1, 2, 3, 4, 5 , 6]
p map_me(integers).to_s

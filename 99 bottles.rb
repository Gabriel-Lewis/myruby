
def bottles
  bottles_count = gets.to_i
  while bottles_count > 0
    puts("#{bottles_count} bottles of beer on the wall")
    puts("#{bottles_count} of beer")
    puts("take one down pass it around")
    puts("#{bottles_count -1} bottles of beer on the wall")
    bottles_count -= 1
  end
end

bottles

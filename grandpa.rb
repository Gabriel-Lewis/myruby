def deaf_grandpa

  while true
    message = gets.chomp
    if message != message.upcase
      puts "HUH?!? SPEAK UP, SONNY?!?"
    elsif message == "BYE"
      puts "BYE"
      break
    elsif message == message.upcase
      puts "NO, NOT SINCE 19#{rand(50)}"
    end
  end
end

deaf_grandpa

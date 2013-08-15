class Beer
  def self.song
    puts "99 bottles of beer on the wall, 99 bottles of beer."
    for i in (1..98).to_a.reverse
      s = i == 1 ? "" : "s"
      puts "Take one down and pass it around, #{i} bottle#{s} of beer on the wall.\n\n"
      puts "#{i} bottle#{s} of beer on the wall, #{i} bottle#{s} of beer."
    end

    puts "Take it down and pass it around, no more bottles of beer on the wall.\n\n"
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end

Beer.song

class Grandma

  def response_for(input)
    if saying_bye?(input)
      exit
    elsif shouting?(input)
      "NO, NOT SINCE #{year}!"
    else
     "HUH?!  SPEAK UP, SONNY!"
    end
  end

  def saying_bye?(input)
    input == "BYE"
  end

  def shouting?(input)
    !input.empty? && input == input.upcase
  end

  def year
    (1930..1950).to_a.sample
  end
end

# grandma = Grandma.new
# loop do
#   puts grandma.response_for(gets.chomp)
# end

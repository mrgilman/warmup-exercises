class Bob

  def response_for(input)
    if question?(input)
      'Sure.'
    elsif shouting?(input)
      'Woah, chill out!'
    elsif statement?(input)
      'Whatever.'
    else
      'Fine, be that way.'
    end
  end

  def question?(input)
    input.end_with?("?")
  end

  def shouting?(input)
    !input.empty? && input == input.upcase
  end

  def statement?(input)
    !input.empty?
  end
end

bob = Bob.new
loop do
  puts bob.response_for(gets.chomp)
end

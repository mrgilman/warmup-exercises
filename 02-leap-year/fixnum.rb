class Fixnum

  def leap_year?
    divisible_by_400? || (divisible_by_4? && !divisible_by_100?)
  end

  private

  def divisible_by_4?
    self % 4 == 0
  end

  def divisible_by_100?
    self % 100 == 0
  end

  def divisible_by_400?
    self % 400 == 0
  end

end


require 'minitest/autorun'
require 'minitest/pride'

ENV["RUBY_ENV"] = "test"

require './grandma'

class GrandmaTest < MiniTest::Unit::TestCase

  def setup
    @grandma = Grandma.new
  end

  def test_speaking
    response = "HUH?!  SPEAK UP, SONNY!"
    assert_match response, @grandma.response_for('speaking')
  end

  def test_shouting
    response = /NO,\ NOT\ SINCE\ \d{4}!/
    assert_match response, @grandma.response_for('SHOUTING')
  end

  def test_year_in_range
    response = @grandma.response_for('SHOUTING')
    year = response.scan(/\d{4}/).first.to_i
    assert_includes 1930..1950, year
  end

  def test_bye
    @grandma.stub(:exit, true) do
      assert @grandma.response_for("BYE")
    end
  end

end

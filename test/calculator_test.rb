require "minitest/autorun"
require "calculator"

class CalculatorTest < Minitest::Test
  def setup
    @calc = Calculator.new
  end

  def test_add
    assert_equal 5, @calc.add(2, 3)
  end

  def test_add_negative
    assert_equal(-1, @calc.add(2, -3))
  end
end

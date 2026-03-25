require "minitest/autorun"
require "calculator"

class CalculatorTest < Minitest::Test
  def test_add
    calc = Calculator.new
    assert_equal 5, calc.add(2, 3)
  end

  def test_add_negative
    calc = Calculator.new
    assert_equal(-1, calc.add(2, -3))
  end

  def test_divide
    calc = Calculator.new
    assert_equal 3.5, calc.divide(7, 2)
  end

  def test_divide_even
    calc = Calculator.new
    assert_equal 2.0, calc.divide(6, 3)
  end

  def test_divide_by_zero
    calc = Calculator.new
    assert_raises(ZeroDivisionError) { calc.divide(6, 0) }
  end

  def test_divide_negative
    calc = Calculator.new
    assert_equal(-2.0, calc.divide(-6, 3))
  end
end

class Calculator
  def add(a, b)
    a + b
  end

  def divide(a, b)
    raise ZeroDivisionError, "divided by 0" if b == 0
    a.to_f / b
  end
end

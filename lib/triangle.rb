class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a=a
    @b=b
    @c=c
  end
  def kind()
    validate
    if a == b && a == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else
      :scalene
    end
  end
  def greater_than
    a > 0 && b > 0 && c > 0
  end
  def side_lengths 
    a + b > c && b + c > a && a + c > b
  end
  def validate 
    raise TriangeError unless greater_than && side_lengths
  end

  class TriangeError < StandardError
  end

end

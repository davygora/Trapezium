class Trapezium

  def initialize x1, y1, x2, y2, x3, y3, x4, y4
    raise 'This is not a Trapezium' if y2 != y3 || y1 != y4
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2
    @x3 = x3
    @y3 = y3
    @x4 = x4
    @y4 = y4
    @h = @y2 - @y1
  end

  def length x1, y1, x2, y2
    Math.sqrt((x2 - x1)**2 + (y2 - y1)**2)
  end

  def equilateral_trapezium?
    length(@x1, @y1, @x2, @y2,) == length(@x3, @y3, @x4, @y4)
  end

  def perimeter_trapezium
    length(@x1, @y1, @x2, @y2,) + length(@x2, @y2, @x3, @y3) +
     length(@x3, @y3, @x4, @y4) + length(@x4, @y4, @x1, @y1)
  end

  def area_trapezium
    (length(@x1, @y1, @x4, @y4) + length(@x2, @y2, @x3, @y3)) / 2 * @h
  end
end

=begin
t = Trapezium.new(0,0, 1,10, 4,10, 5,0)
p t.length(1,10, 4,10)
p t.length(0,0, 5,0)
p t.perimeter_trapezium
p t.equilateral_trapezium?
p t.area_trapezium
=end

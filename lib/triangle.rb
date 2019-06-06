require 'pry'

class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def valid?
    side_1 + side_2 > side_3 && side_2 + side_3 > side_1 && side_1 + side_3 > side_2
  end

  def kind
    unless valid?
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end

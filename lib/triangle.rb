require 'pry'
class Triangle
  attr_accessor :side_one, :side_two, :side_three
    
    def initialize(side_one,side_two,side_three)
      @side_one = side_one
      @side_two = side_two
      @side_three = side_three
    end
    
    def kind
      total = side_one + side_two + side_three
      if side_one == side_two && side_one == side_three
        return "equilateral".to_sym
      elsif side_two == side_three || side_one == side_three || side_one == side_two
        return "isosceles".to_sym
      elsif side_one != side_two && side_one != side_three
        return "scalene".to_sym
      elsif side_one == nil && side_two == nil && side_three == nil
       begin 
        raise TriangleError
      rescue TriangleError => error
      puts error.message
      end
    end
  end
end
  

 
     class TriangleError < StandardError
      def method
      "illegal"
    end
  end
    

require 'pry'
class Triangle
  attr_accessor :side_one, :side_two, :side_three
    
    def initialize(side_one,side_two,side_three)
      @side_one = side_one
      @side_two = side_two
      @side_three = side_three
    end
    
    def kind
      
      if side_one == side_two && side_one == side_three
        return "equilateral".to_sym
      elsif side_two == side_three || side_one == side_three || side_one == side_two
        return "isosceles".to_sym
      elsif side_one != side_two && side_one != side_three
        return "scalene".to_sym
        binding.pry
      else total == nil || total < 0
        
       begin 
        raise Triangle::TriangleError
      rescue Triangle::TriangleError => error
      puts error.message
      
      end
    end
  end
    class TriangleError < StandardError
      
    
  end
end
  

    

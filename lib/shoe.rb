require 'pry'
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  BRANDS = []

  def initialize(brand)
    @brand = brand
   if BRANDS == []
     BRANDS << brand 
    
   elsif BRANDS.all? { |existing_brand| brand != existing_brand}
       BRANDS << brand 
   end    
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
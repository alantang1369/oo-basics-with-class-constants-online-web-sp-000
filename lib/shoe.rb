class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  BRANDS = []

  def initialize(brand)
    @brand = brand
   if BRANDS == []
     BRANDS << brand 
   else 
    BRANDS.each do |existing_brand|
      if brand != existing_brand
       BRANDS << brand 
       BRANDS
      end 
    end
    end    
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
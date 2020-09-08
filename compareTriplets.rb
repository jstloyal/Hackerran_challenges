# class MyCar
#   attr_accessor :year, :color, :model

#   def initialize(y, c, m)
#     @year = y
#     @color = c 
#     @model = m 
#     @speed = 0
#   end

#   def speed
#     "#{name} says Arf"
#   end
# end

# toyota = MyCar.new(1999, 'black', 'corolla')
# p toyota.model

def skip_animals(animals, skip)
  # Your code here
    animals.each_with_index do |key, index|
        animals if index > skip
    end
    animals
end

p skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2)
skip_animals([1,2,3,4,5], 3)

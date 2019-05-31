class SuperHero 
  
  attr_accessor :name, :power, :biography 
  
  @@super_heroes = []
  
  def initialize(args={})
    @name = args[:name]
    @power = args[:power] 
    @biography = args[:biography] 
    
    @@super_heroes << self 
  end
  
  def self.all 
    @@super_heroes
  end
    
  
end 
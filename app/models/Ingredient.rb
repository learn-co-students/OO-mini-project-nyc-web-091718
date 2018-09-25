class Ingredient
  attr_reader :type
  @@all = []

  def self.most_common_allergen
  end

  def self.all
    @@all
  end

  def initialize(type)
    @type = type
    @@all << self
  end

  def self.most_popular

    count_hash = {}
    Allergen.all.each do |allergen|
      if count_hash[allergen.ingredient] == nil
        count_hash[allergen.ingredient] = 1
      else
        count_hash[allergen.ingredient] += 1
      end
    end
      count_hash.key(count_hash.values.max)
  end

end #end of Ingredient class

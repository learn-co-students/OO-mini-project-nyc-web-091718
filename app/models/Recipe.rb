class Recipe

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_popular
  end

  def self.all
    @@all
  end

  def users
    user_cards = RecipeCard.all.select do |rc|
      rc.recipe == self
    end
    user_cards.map do |rc|
      rc.user
    end
  end

  def add_ingredients(arr_ing)
    arr_ing.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

  def ingredients
    RecipeIngredient.all.select do |ri|
      ri.recipe == self
    end.map do |my_ri|
      my_ri.ingredient
    end
  end

  def allergens
      Allergen.all.select do |allergen|
        self.ingredients.include?(allergen.ingredient)
      end
  end

  def self.most_popular

    count_hash = {}
    RecipeCard.all.each do |rc|
      if count_hash[rc.recipe] == nil
        count_hash[rc.recipe] = 1
      else
        count_hash[rc.recipe] += 1
      end
    end
      count_hash.key(count_hash.values.max)
  end

end

class User

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, rating, date)
  end

  def recipes
    user_recipe_cards = RecipeCard.all.select do |rc|
      rc.user == self
    end

    user_recipe_cards.map do |card|
      card.recipe
    end
  end

  def top_three_recipies
    user_recipe_cards = RecipeCard.all.select do |rc|
      rc.user == self
    end

    top_three = user_recipe_cards.sort_by {|recipe| recipe.rating}.reverse![0..2]
    top_three.map do |card|
      card.recipe
    end
  end

  def declare_allergen(ingredient)
    Allergen.new(self,ingredient)
  end

  def allergens
    user_allergens = Allergen.all.select do |allergen|
      if allergen.user == self
        allergen.user
      end
    end
    user_allergens.map do |user_allergen|
      user_allergen.ingredient
    end
  end

  def most_recent_recipe
    self.recipes.last
  end

end

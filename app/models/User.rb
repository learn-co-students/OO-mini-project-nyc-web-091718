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

end

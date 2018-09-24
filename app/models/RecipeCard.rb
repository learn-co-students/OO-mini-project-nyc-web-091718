class RecipeCard

  attr_accessor :rating
  attr_reader :user, :recipe, :date

  @@all = []

  def initialize(user, recipe, rating, date)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end



end

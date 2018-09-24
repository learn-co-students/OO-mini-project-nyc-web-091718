require_relative '../config/environment.rb'

u1 = User.new("Chris")
u2 = User.new("Asaf")

r1 = Recipe.new("Ebola")
r2 = Recipe.new("Super Ebola")

rc1 = RecipeCard.new(u1,r1,4,"1/1/1")
rc2 = RecipeCard.new(u2,r2,3,"1/2/1")
rc3 = RecipeCard.new(u1,r2,1,"5/5/2005")


binding.pry

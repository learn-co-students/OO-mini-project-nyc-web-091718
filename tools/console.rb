require_relative '../config/environment.rb'

u1 = User.new("Chris")
u2 = User.new("Asaf")

r1 = Recipe.new("Ebola")
r2 = Recipe.new("Super Ebola")
r3 = Recipe.new("Weaker Ebola")
r4 = Recipe.new("Peanuts")

rc1 = RecipeCard.new(u1,r1,4,"1/1/1")
rc2 = RecipeCard.new(u2,r2,3,"1/2/1")
rc3 = RecipeCard.new(u1,r2,1,"5/5/2005")
rc4 = RecipeCard.new(u1,r3,2,"2/5/1990")
rc5 = RecipeCard.new(u1,r4,8,"0/0/2001")


i1 = Ingredient.new('sulfur')
i2 = Ingredient.new('acid')
i3 = Ingredient.new('reading')

a1 = Allergen.new(u2,i3)
a2 = Allergen.new(u2,i2)
a3 = Allergen.new(u1,i1)
a4 = Allergen.new(u1,i3)

r2.add_ingredients([i1,i2])
r1.add_ingredients([i2])
r3.add_ingredients([i1])




binding.pry

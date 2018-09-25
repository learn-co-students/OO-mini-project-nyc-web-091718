require_relative '../config/environment.rb'

u1 = User.new("User1")
u2 = User.new("User2")
u3 = User.new("User3")

i1 = Ingredient.new("i1")
i2 = Ingredient.new("i2")
i3 = Ingredient.new("i3")
i4 = Ingredient.new("i4")
i5 = Ingredient.new("i5")
i6 = Ingredient.new("i6")
ingredient_array = []
ingredient_array << i4
ingredient_array << i5
ingredient_array << i6

r1 = Recipe.new()
r2 = Recipe.new()
r3 = Recipe.new()
r4 = Recipe.new()
r5 = Recipe.new()

ri1 = RecipeIngredient.new(i1,r2)
ri2 = RecipeIngredient.new(i2,r2)
ri3 = RecipeIngredient.new(i3,r3)
ri4 = RecipeIngredient.new(i3,r4)
ri5 = RecipeIngredient.new(i3,r5)

rc1 = u1.add_recipe_card(r1,"9-21-18",5)
rc2 = u2.add_recipe_card(r1,"9-21-12",4)
rc3 = u1.add_recipe_card(r2,"x,x,x",2)
rc4 = u1.add_recipe_card(r3,"x,x,x",3)
rc5 = u3.add_recipe_card(r4,"x,x,x",5)
rc6 = u1.add_recipe_card(r5,"x,x,x",1)

a1 = u1.declare_allergen(i1)
a2 = u1.declare_allergen(i2)
a3 = u2.declare_allergen(i2)


users = r1.users
ingredients = r1.ingredients

binding.pry

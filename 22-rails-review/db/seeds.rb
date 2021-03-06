# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RecipeIngredient.destroy_all
Allergy.destroy_all
User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all

ix = User.create(name:'ix')
rose = User.create(name:'rose')
adam = User.create(name:'adam')
emiley = User.create(name:'emiley')

20.times do
    Recipe.create(name:Faker::Food.dish, steps:Faker::Food.description, user_id: User.all.sample.id)
    Ingredient.create(name:Faker::Food.ingredient)
end 

100.times do 
    RecipeIngredient.create(ingredient_id:Ingredient.all.sample.id, recipe_id: Recipe.all.sample.id, amount:Faker::Food.measurement)
end 

30.times do
    Allergy.create(user_id:User.all.sample.id, ingredient_id:Ingredient.all.sample.id)
end 
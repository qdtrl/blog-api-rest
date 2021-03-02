# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

p " ********************************* "
p " *                               * "
p " *         BEGIN OF SEED         * "
p " *                               * "
p " ********************************* "

p "Destroy curent data..."

p "Destroying Articles... #{Article.count} "
Article.destroy_all
p "-----------------------"
p "-----------------------"

# ARTICLES
30.times do
  Article.create!(
    user_id: 1,
    title: Faker::Movie.title,
    content: Faker::Movies::StarWars.quote
  )
end

# puts "#{tp Article.all}"
p "Creation Articles... #{Article.count}"
puts "DONE"
p "-----------------------"
p "-----------------------"

p " ********************************* "
p " *                               * "
p " *          END OF SEED          * "
p " *                               * "
p " ********************************* "

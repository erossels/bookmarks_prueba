# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Kind.create(name:'video')
Kind.create(name:'article')
Kind.create(name:'paper')
Kind.create(name:'newsletter')
Kind.create(name:'audio')
Kind.create(name:'other')

5.times do |i|
 seed = Category.create(name: Faker::Commerce.department, is_public: 0)
  5.times do |j|
    seed2 = Category.create(name: Faker::Commerce.product_name, is_public: seed.is_public, category_id: seed.id)
    5.times do |k|
      Category.create(name: Faker::Commerce.color, is_public: seed2.is_public)
    end
  end
end
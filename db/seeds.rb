# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Kind.create(name:'video')
# Kind.create(name:'article')
# Kind.create(name:'paper')
# Kind.create(name:'newsletter')
# Kind.create(name:'audio')
# Kind.create(name:'other')

# coin = [0,1]

# 5.times do |i|
#   @seed = Category.create(name: 'Category_'+i.to_s, is_public: coin.sample)
#   5.times do |j|
#     @seed2 = Category.create(name: 'Category_'+i.to_s+'.'+j.to_s, is_public: @seed.is_public, category_id: @seed.id)
#     5.times do |k|
#       Category.create(name: 'Category_'+i.to_s+'.'+j.to_s+'.'+k.to_s, is_public: @seed2.is_public, category_id: @seed2.id)
#     end
#   end
# end

array_cats = [1,2,3,4,5,6,7,8,9,10]
array_kinds = [1,2,3,4,5]

20.times do |i|
  Bookmark.create!(
    name:'B_000'+i.to_s, 
    url: 'www.B_000'+i.to_s+'.cl', 
    category_id: array_cats.sample,
    kinds_id: array_kinds.sample
  )
end
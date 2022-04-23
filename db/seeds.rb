# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  rand_content = ''
  rand(2..4).times do
    rand_content += Faker::Lorem.paragraph(sentence_count: 15, supplemental: false, random_sentences_to_add: 7)
  end
  Article.create(
    title: "#{Faker::Beer.brand} #{Faker::Beer.style} #{Faker::Beer.alcohol}",
    content: rand_content
  )
end

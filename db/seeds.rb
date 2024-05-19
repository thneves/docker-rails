# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Text.destroy_all

User.all.each do |user|
  rand(10..40).times do
    user.texts.create!(
      title: Faker::Book.title,
      content: Faker::Lorem.paragraphs(number: 50).join("\n\n"),
      created_at: Faker::Date.between(from: 1.year.ago, to: Date.today)
    )
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require "faker"
5.times do
    restaurant = Restaurant.new(
      name: Faker::Restaurant.name,
      address: Faker::Internet.email,
      category: %w(chinese italian french japanese belgian).sample
    )
    restaurant.save
  
    rand(5..10).times do
      review = Review.new(
        content: Faker::Restaurant.review,
        rating: rand(0..5),
        restaurant: restaurant
      )
      review.save
    end
  end
  
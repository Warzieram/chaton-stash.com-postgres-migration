require 'faker'

20.times do
  Item.create!(
    name: Faker::Commerce.product_name,                     
    description: Faker::Lorem.paragraph(sentence_count: 3), 
    price: Faker::Commerce.price(range: 5.0..100.0),        
    stock: rand(0..50),                                     
    image_url: Faker::LoremFlickr.image(size: "300x300", search_terms: ['cat']), 
  )
end


user = User.create!(
  email_address: "rails@admin.com",
  password: "123456",
  password_confirmation: "123456",
  first_name: "Chaton",
  last_name: "Fan"
)
puts "User created: #{user.email_address}"
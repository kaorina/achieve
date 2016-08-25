100.times do |n|
  email = Faker::Internet.email
  password = "password"
  name = Faker::Name.name
  User.create!(email: email,
               password: password,
               password_confirmation: password,
               name: name
              )
end

n = 1
while n <= 100
  Blog.create!(
    title: Faker::StarWars.character,
    content: Faker::StarWars.quote,
    user_id: n
    )
  n += 1            
end
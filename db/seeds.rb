<<<<<<< HEAD
enui = User.create!(
  name: 'enui',
  email: 'enui@naryshiki.com',
  coname: 'nonress',
  password: 'hogehoge',
  password_confirmation: 'hogehoge',
  admin: 'true',
  activated: true,
  activated_at: Time.zone.now
)

20.times do |n|
=======
User.create!(name:  "enui",
             email: "enui@naryshiki.com",
             coname: 'nonress',
             password:              "hogehoge",
             password_confirmation: "hogehoge",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
>>>>>>> parent of 9a8d83c... generate features user && workpost controller tests
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  coname = "example.company#{n+1}"
  password = "password"
  User.create!(name:  name,
               email: email,
               coname: coname,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
10.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

users = User.all
user  = users.first
following = users[2..20]
followers = users[3..10]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

user.work_posts.create!(title: 'アプリ開発',
                 body: 'noname',
                 skill: 'ruby on rails',
                 reward: 20000)

category1 = Category.create(name: 'エンジニア')
category2 = Category.create(name: 'インフルエンサー')

10.times do |n|
  title = Faker::Lorem.sentence
  body = Faker::Lorem.sentences
  skill = Faker::Food
  reward = Faker::Number.number(digits: 6)
  users.each do |user|
    user.work_posts.create!(title: title,
                  body: body,
                  skill: skill,
<<<<<<< HEAD
                  reward: reward,
                  category_ids: category1)
=======
                  reward: reward)

>>>>>>> parent of 9a8d83c... generate features user && workpost controller tests
  end
end

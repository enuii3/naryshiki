99.times do |n|
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
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

user.work_posts.create!(title: 'アプリ開発',
                 body: 'noname',
                 skill: 'ruby on rails',
                 reward: 20000)

category1 = Category.create(name: 'エンジニア')
category2 = Category.create(name: 'インフルエンサー')
category3 = Category.create(name: 'ライター')
category4 = Category.create(name: 'クリエイター')
category5 = Category.create(name: '営業')
category6 = Category.create(name: '事務')

10.times do |n|
  title = Faker::Lorem.sentence
  body = Faker::Lorem.sentences
  skill = Faker::Food
  reward = Faker::Number.number(digits: 6)
  users.each do |user|
    user.work_posts.create!(title: title,
                  body: body,
                  skill: skill,
                  reward: reward)
  end
end

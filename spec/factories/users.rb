FactoryBot.define do
  factory :user do
    name {'enui'}
    coname {'nonress'}
    sequence(:email) {|n| "enui#{n}@naryshiki.com"}
    password {'hogehoge'}
  end
end

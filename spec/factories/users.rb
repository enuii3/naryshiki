FactoryBot.define do
  factory :user do
    name {'enui'}
    coname {'nonress'}
    sequence(:email) { |n| "enui#{n}@naryshiki.com"}
    password {'hogehoge'}
    password_confirmation { 'hogehoge' }
    activated { false }
    admin { false }
  end

  factory :other_user do
    name {'onarysan'}
    coname {'nonresses'}
    sequence(:email) { |n| "onarysan#{n}@naryshiki.com"}
    password {'hogehogesample'}
    password_confirmation { 'hogehogesample' }
    activated { false }
    admin { false }
  end
end

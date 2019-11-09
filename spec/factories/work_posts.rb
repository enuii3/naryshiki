FactoryBot.define do
  factory :work_post do
    title {'noname'}
    body {'ruby assosietion'}
    skill {'ruby on rails'}
    reward {20000}
    association :user
  end
end

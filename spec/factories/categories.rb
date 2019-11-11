FactoryBot.define do
  factory :category, aliases: [:categories] do
    name {'engineer'}
    association :work_post
  end
end

FactoryBot.define do
  factory :work_post_relation, class: 'WorkPostRelations' do
    association :work_post
    association :category
  end
end

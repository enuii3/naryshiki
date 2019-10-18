class WorkPost < ApplicationRecord
  belongs_to :user
  has_rich_text :body
  default_scope -> { order(created_at: :desc)}
  has_many :work_post_category_relations, dependent: :destroy
  has_many :categories, through: :work_post_category_relations
  validates :category_ids, presence: true

end

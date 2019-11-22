class WorkPost < ApplicationRecord
  belongs_to :user
  has_rich_text :body
  scope :work_posts_scope, -> { order(created_at: :desc) }
  has_many :work_post_category_relations, dependent: :destroy
  has_many :categories, through: :work_post_category_relations
  validates :categories, presence: true
end

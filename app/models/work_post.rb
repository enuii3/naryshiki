class WorkPost < ApplicationRecord
  belongs_to :user
  has_rich_text :body
  default_scope -> { order(created_at: :desc)}
  has_many :work_post_category_relations, dependent: :destroy
  has_many :categories, through: :work_post_category_relations
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  validates :title, :body, :category_ids, presence: true
=======
  validates :category_ids, presence: true
=======
  validates :categories, presence: true
>>>>>>> parent of cc454fc... first push

>>>>>>> parent of 0118af8...  change category_ides -> categories
=======
  validates :category_ids, presence: true

>>>>>>> parent of 9a8d83c... generate features user && workpost controller tests
end

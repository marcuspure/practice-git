class Post < ApplicationRecord
  belongs_to :board
  belongs_to :user
  has_many :comments

  has_many :favorite_posts
  has_many :favorite_users, through: :favorite_posts, source: 'user'

  validates :tittle, presence: true
  validates :content, presence: true

  def owned_by?(u)
    self.user == user
  end
end

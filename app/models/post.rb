class Post < ApplicationRecord
  belongs_to :board
  belongs_to :user

  validates :tittle, presence: true
  validates :content, presence: true

def owned_by?(u)
self.user == user
end
end

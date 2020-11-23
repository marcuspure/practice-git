class Post < ApplicationRecord
  belongs_to :board_id
  belongs_to :user_id

  validates :tittle, presence: true
  validates :content, presence: true

def owned_by?(u)
self.user == user

end

class Board < ApplicationRecord

    validates :tittle, presence: true ,length:{minimum:4}

# 每個帳號都可以有多文章
    has_many :posts
end

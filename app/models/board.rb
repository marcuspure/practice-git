class Board < ApplicationRecord

    validates :tittle, presence: true ,length:{minimum:4}
end

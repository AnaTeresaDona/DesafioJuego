class Game < ApplicationRecord
    has_one_attached :rule
    has_one_attached :cover
    has_many_attached :pieces
end

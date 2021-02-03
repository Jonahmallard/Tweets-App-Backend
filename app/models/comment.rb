class Comment < ApplicationRecord
    belongs_to :post
    validates :username, :content, presence: true
    validates_inclusion_of :kind, :in => ['Like', 'Dislike']
    validates_inclusion_of :likes, :in => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
end

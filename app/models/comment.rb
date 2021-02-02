class Comment < ApplicationRecord
    belongs_to :post
    validates :username, :content, presence: true
    validates_inclusion_of :kind, :in => ['Like', 'Dislike']
end

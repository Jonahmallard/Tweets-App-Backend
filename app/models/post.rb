class Post < ApplicationRecord
    has_many :comments
    validates :username, :content, presence: true
end

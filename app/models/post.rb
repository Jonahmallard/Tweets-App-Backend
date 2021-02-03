class Post < ApplicationRecord
    has_many :comments
    validates :username, :content, presence: true

    def update_likes 
        if comment.kind == 'Like'
            self.likes = self.likes + transaction.likes
            self.save
        elsif comment.kind == 'Dislike'
            self.likes =self.likes - comment.likes
            self.save
        end
    end
end

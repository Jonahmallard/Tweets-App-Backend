class Post < ApplicationRecord
    has_many :comments
    validates :username, :content, presence: true

    def update_likes(comment)
        if comment.kind == 'Like'
            self.likes = self.likes + comment.likes
            self.save
        elsif comment.kind == 'Dislike'
            self.likes =self.likes - comment.likes
            self.save
        end
    end

    def update_likes_on_delete(comment)
        if comment.kind == 'Like'
            self.likes = self.likes - comment.likes
            self.save
        elsif comment.kind == 'Dislike'
            self.likes =self.likes + comment.likes
            self.save
        end
    end
end

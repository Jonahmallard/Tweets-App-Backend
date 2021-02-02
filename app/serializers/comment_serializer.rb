class CommentSerializer < ActiveModel::Serializer
  attributes :id, :username, :content, :likes, :date, :kind, :post_id
end

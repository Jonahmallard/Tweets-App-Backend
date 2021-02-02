class PostSerializer < ActiveModel::Serializer
  attributes :id, :username, :content, :likes, :date
  has_many :comments
end

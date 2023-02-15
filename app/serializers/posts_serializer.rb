class PostsSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
  belongs_to :author
  has_many :tags, through: posts
end

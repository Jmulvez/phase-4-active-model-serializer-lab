class TagsSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :post
  has_many :authors, through: :posts
end

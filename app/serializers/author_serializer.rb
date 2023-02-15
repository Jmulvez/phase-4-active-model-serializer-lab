class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name, :profile, :title
  has_many :post
  has_many :tags, through: :posts

  def profile
    "#{self.object.username} - #{self.object.email} - #{self.object.bio} - #{self.object.avatar_url}"
  end
  
end

class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments


  def comment_attributes=(comment_attributes)
    comment_attributes.values.each do |com_att|
      comment = Comment.find_or_create_by(com_att)

      self.comments << comment
    end
 end
end

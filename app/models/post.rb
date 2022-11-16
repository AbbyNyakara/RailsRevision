class Post < ApplicationRecord
  # Dependent destroy will allow the deletion of a post that has commnets 
  has_many :comments, dependent: :destroy 
  belongs_to :user
end

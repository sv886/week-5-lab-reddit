class Post < ActiveRecord::Base

  belongs_to :users
  has_many :comments

  validates :title, :url, :likes, :user_id, presence: true

end

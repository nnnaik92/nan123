class Post < ActiveRecord::Base
  has_attached_file :image, :styles => { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :user


  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :download, presence: true
end

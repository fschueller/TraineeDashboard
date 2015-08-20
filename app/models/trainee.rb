class Trainee < ActiveRecord::Base
  validates :first_name, :last_name, :birthday, :year, :email, :phone, :suse_login, :github, :trello, :description, :image, presence: :true
  validates :email, :email => true
  validates :year, :inclusion => 1..3

  mount_uploader :image, ImageUploader
end

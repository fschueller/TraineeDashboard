class Trainee < ActiveRecord::Base
  validates :first_name, :last_name, :birthday, :year, :email, :phone, :suse_login, :github, :trello, :description, presence: :true

end

require 'rails_helper'

RSpec.describe Trainee, type: :model do
  describe "trainee features" do
    it "should have presence validated" do
      trainee = Trainee.new

      trainee.first_name = nil
      trainee.last_name = nil
      trainee.birthday = nil
      trainee.year = nil
      trainee.email = nil
      trainee.phone = nil
      trainee.suse_login = nil
      trainee.github = nil
      trainee.trello = nil
      trainee.description = nil
      expect(trainee).not_to be_valid

      trainee.first_name = 'farah'
      trainee.last_name = 's'
      trainee.birthday = '16.10.1990'
      trainee.year = '1'
      trainee.email = 'abc@abc.com'
      trainee.phone = '123'
      trainee.suse_login = 'none'
      trainee.github = 'none'
      trainee.trello = 'none'
      trainee.description = 'none'
      expect(trainee).to be_valid
    end
  end
end
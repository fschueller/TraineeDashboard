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

      trainee = FactoryGirl.create(:trainee)
      expect(trainee).to be_valid
    end

    it "should concatenate first and last name" do
      trainee = Trainee.new(first_name: "Farah", last_name: "Rabea")
      expect(trainee.full_name).to eq 'Farah Rabea'
    end

  end
end
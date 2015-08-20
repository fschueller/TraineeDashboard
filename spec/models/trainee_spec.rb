require 'rails_helper'

describe Trainee do
  describe "trainee features" do
      it { should validate_presence_of(:first_name)}
      it { should validate_presence_of(:last_name)}
      it { should validate_presence_of(:birthday)}
      it { should validate_presence_of(:year)}
      it { should validate_presence_of(:email)}
      it { should validate_presence_of(:phone)}
      it { should validate_presence_of(:suse_login)}
      it { should validate_presence_of(:github)}
      it { should validate_presence_of(:trello)}
      it { should validate_presence_of(:description)}

      it { should validate_inclusion_of(:year).in_range(1..3)}
      it { should allow_value("email@address.com").for(:email) }
      it { should_not allow_value("foo").for(:email) }
  end
end

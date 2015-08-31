require 'spec_helper'

describe TraineeDecorator do

  let(:trainee) { FactoryGirl.build(:trainee) }
  let(:decorator) { trainee.decorate }

  describe 'full_name' do
    it 'returns the full name' do
      expect(decorator.full_name).to eq("#{ trainee.first_name } #{ trainee.last_name }")
    end
  end

  describe 'birthday' do
    it 'returns the correct date format for birthday' do
    expect(decorator.birthday).to eq(trainee.birthday.strftime("%b %d, %Y"))
    end
  end
end

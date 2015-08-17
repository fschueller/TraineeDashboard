require 'rails_helper'

RSpec.describe TraineesController, type: :controller do
  let!(:trainee) { FactoryGirl.create(:trainee) }
  let!(:params) { params = FactoryGirl.attributes_for(:trainee) }

  describe "GET #index" do
    it "shows all trainees" do
      trainees = Trainee.all
      get :index

      expect(assigns(:trainees)).to eq(trainees)
    end
  end

  describe "GET #new" do
    it "initializes a new trainee" do
      get :new
      expect(assigns :trainee).to be_a_new(Trainee)
    end
  end

  describe "POST #create" do
    
    it "creates a new trainee" do
        post :create, trainee: params
        expect(Trainee.last.first_name).to eq params[:first_name]
        expect(Trainee.last.last_name).to eq params[:last_name]
        expect(Trainee.last.birthday).to eq params[:birthday]
        expect(Trainee.last.year).to eq params[:year]
        expect(Trainee.last.email).to eq params[:email]
        expect(Trainee.last.phone).to eq params[:phone]
        expect(Trainee.last.suse_login).to eq params[:suse_login]
        expect(Trainee.last.github).to eq params[:github]
        expect(Trainee.last.trello).to eq params[:trello]
        expect(Trainee.last.description).to eq params[:description]
    end
  end
end
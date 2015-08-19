require 'rails_helper'

RSpec.describe TraineesController, type: :controller do
  let!(:trainee) { FactoryGirl.create(:trainee) }
  let!(:params) { params = FactoryGirl.attributes_for(:trainee) }

  describe "GET #show" do
    context "displaying the list of trainees" do
      it "shows all 1st years" do
        trainee = Trainee.create(year: 1)
        get :show, id: 1
        expect(assigns(trainee.year)).to eq(params[:id])
      end
      it "shows all 2nd years" do
        trainee = Trainee.create(year: 2)
        get :show, id: 2
        expect(assigns(trainee.year)).to eq(params[:id])
      end
      it "shows all 3rd years" do
        trainee = Trainee.create(year: 3)
        get :show, id: 3
        expect(assigns(trainee.year)).to eq(params[:id])
      end
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
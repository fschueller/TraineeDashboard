require 'rails_helper'

describe TraineesController do
  let(:params) { FactoryGirl.attributes_for(:trainee) }

  describe "GET #index" do
    context "displaying the list of trainees" do
      it "shows all 1st years" do
        trainee = FactoryGirl.create :trainee
        get :index, year: trainee
        expect(assigns :trainees).to eq Trainee.where(year: trainee).decorate
      end
      it "shows all 2nd years" do
        trainee = FactoryGirl.create(:trainee, year: 2)
        get :index, year: trainee
        expect(assigns :trainees ).to eq Trainee.where(year: trainee).decorate
      end
      it "shows all 3rd years" do
        trainee = FactoryGirl.create(:trainee, year: 3)
        get :index, year: trainee
        expect(assigns :trainees ).to eq Trainee.where(year: trainee).decorate
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
        expect(response).to redirect_to(action: "show", id: Trainee.last.year)
    end

    it "flashes an error at faulty parameters" do
      params = FactoryGirl.attributes_for(:trainee, year: 4)
      post :create, trainee: params
      expect(flash[:error]).to be_present
      expect(response).to render_template(:new)
    end
  end

  describe "GET edit" do
    it "looks up trainee by id" do
      trainee = FactoryGirl.create :trainee
      get :edit, id: trainee
      expect(assigns(:trainee).id).to eq trainee[:id]
    end
  end

  describe "PATCH update" do
    it "updates trainee with new parameter" do
      trainee = FactoryGirl.create :trainee
      patch :update, id: trainee, trainee: FactoryGirl.attributes_for(:trainee, year: 3)
      expect(Trainee.last.year).to eq 3
      expect(response).to redirect_to(action: "show", id: Trainee.last.year)
    end
  end
end

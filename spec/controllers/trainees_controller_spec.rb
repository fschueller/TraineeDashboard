require 'rails_helper'

RSpec.describe TraineesController, type: :controller do
  describe "GET #index" do
    it "shows all trainees" do
      trainees = Trainee.all
      get :index

      expect(assigns(:trainees)).to eq(trainees)
    end
  end

  describe "POST #create" do
    let(:first_name) { "Farah" }
    let(:payload) { { trainee: { first_name: first_name, last_name: "Schueller", birthday: "16.10.1990", year: 1, email: "fschueller@suse.de", phone: "none", suse_login: "fschueller", github: "fschueller", trello: "farahschueller", description: "nothing is true, everything is permitted."}}}
    
    it "creates a new trainee" do
        post :create, payload
        expect(Trainee.last.first_name).to eq first_name
    end
  end
end
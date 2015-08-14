require "rails_helper"

RSpec.describe "routes for TraineeDashboard" do

  it "routes to root" do
    expect(get("/")).to route_to("dashboard#index")
  end

  it "routes /trainees to trainees#index" do
    expect(get("/trainees")).to route_to("trainees#index")
  end

  it "routes new_trainee to trainees#new" do
    expect(get("/trainees/new")).to route_to("trainees#new")
  end

  it "routes /trainees to trainees#create" do
    expect(post("/trainees")).to route_to("trainees#create")
  end

  it "routes edit_trainee to trainees#edit" do
    expect(get("/trainees/1/edit")).to route_to("trainees#edit", id: "1")
  end

  it "routes /trainee to trainees#update" do
    expect(patch("/trainees/1")).to route_to("trainees#update", id: "1")
  end

end

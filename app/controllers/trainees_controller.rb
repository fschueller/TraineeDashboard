class TraineesController < ApplicationController
  def index
    @trainees = Trainee.all
  end

  def new
    @trainee = Trainee.new
  end

  def create
    @trainee = Trainee.new(trainee_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  protected

  def trainee_params
    params.require(:trainee).permit(:first_name, :last_name, :birthday, :year, :email, :phone, :suse_login, :github, :trello, :description)
  end
end

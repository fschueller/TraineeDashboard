class TraineesController < ApplicationController
  def index
  end

  def show
    @trainees = Trainee.where(year: params[:id])
  end

  def new
    @trainee = Trainee.new
  end

  def create
    @trainee = Trainee.new(trainee_params)
    if @trainee.save
      redirect_to action: "show", id: @trainee.year
    else
      flash[:error] = "Error creating user, try again."
    end
  end

  def edit
    @trainee = Trainee.find(params[:id])
  end

  def update
    @trainee = Trainee.find(params[:id])
    @trainee.update(trainee_params)
    redirect_to action: "show", id: @trainee.year
  end

  def destroy
  end

  protected

  def trainee_params
    params.require(:trainee).permit(:first_name, :last_name, :birthday, :year, :email, :phone, :suse_login, :github, :trello, :description, :image, :remote_image_url)
  end
end

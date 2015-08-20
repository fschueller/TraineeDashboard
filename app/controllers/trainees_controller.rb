class TraineesController < ApplicationController
  def show
    @trainees = Trainee.where(year: params[:id]).decorate
  end

  def new
    @trainee = Trainee.new
  end

  def create
    @trainee = Trainee.new(trainee_params)
    if @trainee.save
      redirect_to action: "show", id: @trainee.year
    else
      redirect_to new_trainee_url, flash: { error: "Error adding trainee. Please check if you filled in all fields and entered a valid email address!" }
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

  protected

  def trainee_params
    params.require(:trainee).permit(:first_name, :last_name, :birthday, :year, :email, :phone, :suse_login, :github, :trello, :description, :image, :remote_image_url)
  end
end

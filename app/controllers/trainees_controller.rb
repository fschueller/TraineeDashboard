class TraineesController < ApplicationController
  def index
    @trainees = Trainee.where(year: params[:year]).decorate

    if request.xhr?
      render "update_table"
    end
  end

  def new
    @trainee = Trainee.new
  end

  def create
    @trainee = Trainee.new(trainee_params)
    if @trainee.save
      redirect_to action: "show", id: @trainee.year
    else
      flash[:error] = "Error adding trainee. Please check if you filled in all fields correctly and entered a valid email address!"
      render :new
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
    params.require(:trainee).permit(:first_name, :last_name, :birthday, :year, :email, :phone, :room, :suse_login, :github, :trello, :description, :image, :remote_image_url)
  end
end

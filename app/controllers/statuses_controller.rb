class StatusesController < ApplicationController

  def index
    @statuses = Status.all
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      redirect_to new_status_path
    else
      render :new
    end
  end

  def show
  end

  private

  def status_params
    params.require(:status).permit(:status, :user, :likes)
  end

end

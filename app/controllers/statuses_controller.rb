class StatusesController < ApplicationController

  def index
    @statuses = Status.all.order(:id)
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      redirect_to statuses_path, notice: "Project was Created"
    else
      render :new
    end
  end

  def edit
    @status = Status.find(params[:id])
  end

  def update
    @status = Status.find(params[:id])
    if @status.update(status_params)
      redirect_to statuses_path, notice: "Project was Updated"
    end
  end

  def show
    @status = Status.find(params[:id])
  end

  def destroy
    @status = Status.find(params[:id])
    if @status.destroy
      redirect_to statuses_path, notice:"Project was Deleted"
    end
  end

  def like
    @status = Status.find(params[:id])

    if @status.likes.nil?
      @status.likes = 0
    end

    @status.likes += 1

    @status.save
    redirect_to statuses_path

  end

  private

  def status_params
    params.require(:status).permit(:status, :user, :likes)
  end



end

class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update, :delete]

  def index
    @spaces = Space.all
  end

  def show
  end

  def create
    @space = Space.new
    if @space.save
      redirect_to spaces_path
    else
      render :new
    end
  end

  def new
    @space = Space.new
  end

  def edit
  end

  def update
    @space.update(space_params)
    redirect_to spaces_path
  end

  def destroy
    @space.destroy
    redirect_to spaces_path
  end

  def search
  end


  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :address, :description, :instruments)
  end
end

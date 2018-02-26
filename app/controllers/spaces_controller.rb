class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update, :delete]

  def index
  end

  def show
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :address, :description, :instruments)
  end
end

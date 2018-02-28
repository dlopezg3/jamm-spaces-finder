class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update, :delete]
  skip_after_action :verify_authorized, only: :search

  def index
    @spaces = policy_scope(Space.all)
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
    authorize @space
  end

  def new
    @space = Space.new
    authorize @space
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
    @spaces = Space.all

    # country
    if params[:query].present?
      @spaces = Space.where(country: params[:query])
    end

    # if params[:price_per_hour] = #user_query (same unit as database)
      # @spaces = @spaces.where #active record matches query
    # end
  end


  private

  def set_space
    @space = Space.find(params[:id])
    authorize @space
  end

  def space_params
    params.require(:space).permit(:name, :address, :description, :instruments)
  end
end

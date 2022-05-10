class ActivitiesController < ApplicationController
before_action :authenticate_user!, only: :toggle_favorite
  def toggle_favorite
    @activity = Activity.find_by(id: params[:id])
    current_user.favorited?(@activity)? current_user.unfavorite(@activity) : current_user.favorite(@activity)
  end

  def index
    if params[:query].present?
      @activities = Activity.global_search(params[:query])
    else
      @activities = Activity.all
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    # @organisation = Organisation.find(params[:cafe_id])
    @activity = Activity.new(activity_params)
    # @activity.organisation_id = @organisation.id
    @activity.save
  end

  private
  def activity_params
    params.require(:activity).permit(:description, :name)
  end

end

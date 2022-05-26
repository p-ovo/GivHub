class ActivitiesController < ApplicationController
before_action :authenticate_user!, only: :toggle_favorite
  def index
    @type = Type.find_by(name: params[:type])
    if @type
      @activities = Activity.joins(:types).where(types: {id: @type.id} )
    else
      @activities = Activity.all
    end
    @activities = @activities.global_search(params[:query]) if params[:query].present?
  end

  def show
    @activity = Activity.find(params[:id])
    @organisation = Organisation.where(activity_id: @activity.id)
  end


  def toggle_favorite
    @activity = Activity.find_by(id: params[:id])
    current_user.favorited?(@activity) ? current_user.unfavorite(@activity) : current_user.favorite(@activity)
  end

  def clicked?
    @activity = Activity.find_by(id: params[:id])
    @favourite = current_user.favorited?(@activity) ? 'fa-heart-clicked' : 'fa-heart'
  end

end

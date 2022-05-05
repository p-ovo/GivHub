class ActivitiesController < ApplicationController
  def index
    # if params[:query].present?
    #   sql_query = "name LIKE :query OR description LIKE :query"
    #   @activities = Activity.where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @activities = Activity.all
    # end

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

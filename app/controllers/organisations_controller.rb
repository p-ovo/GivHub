class OrganisationsController < ApplicationController
  def index
    @activity = Activity.find(params[:id])
    @organisations = @activity.organisation
  end
end

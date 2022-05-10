class UsersController < ApplicationController

  def profile
    @user = current_user
    @personality = Personality.find(@user.personality_id)
  end

  def favourites
    @liked_activities = current_user.all_favorited
  end
end

class UsersController < ApplicationController
  def profile
    @user = current_user
    @personality = Personality.find(@user.personality_id)
  end
end

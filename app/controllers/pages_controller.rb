class PagesController < ApplicationController
  def home

  end

  def quiz

  end

  def wheel
    @activities = Activity.all
  end

  def share

  end

  def results

  end
end

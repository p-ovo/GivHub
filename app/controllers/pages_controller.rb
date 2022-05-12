class PagesController < ApplicationController
  def home

  end

  def quiz

  end

  def wheel

  end

  def results
    # Tag.find_by(trait: Personality.find(1))
    @activities = [Activity.find_by(name: "Community clean up"), Activity.find_by(name: "Teach")]
  end

  def share

  end
end

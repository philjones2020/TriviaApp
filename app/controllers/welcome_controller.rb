class WelcomeController < ApplicationController
  def index
  end
  def leaderboards
  	@Users = User.limit(10).order(score: :desc)
  end

end

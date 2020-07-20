class WelcomeController < ApplicationController
  before_action :authenticate_user!, only: [:profile]
  def index
  end
  def leaderboards
  	@Users = User.limit(10).order(score: :desc)
  end
  
  def profile
  	@User = current_user
  end


end

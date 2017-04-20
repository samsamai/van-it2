class LandingPageController < ApplicationController
  def show
    if current_user
      redirect_to rides_path
    end
    
  end
end

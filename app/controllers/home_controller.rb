class HomeController < ActionController::Base
  def index
    @users = User.all.includes(:address)
  end
end

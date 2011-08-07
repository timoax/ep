class LogoutController < ApplicationController
  before_filter :authorize
  def index
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to :controller => "login", :action => "index"
  end
end

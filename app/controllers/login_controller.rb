class LoginController < ApplicationController

  def index
    if request.post?
      user = User.authenticate(params[:name], params[:password]) 
      if user
        session[:user_id] = user.id
        uri = session[:original_uri]
        session[:original_uri] = nil
        redirect_to(uri || {:controller => "devices", :action => "index" })
      else
        flash.now[:notice] = "Invalid user/password combination"
      end 
    else
      # if not receiving a post, check if the user is already logged in
      if User.find_by_id(session[:user_id])
        redirect_to :controller => "devices", :action => "index"
      end
    end
  end

end

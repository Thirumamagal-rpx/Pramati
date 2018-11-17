class SessionsController < ApplicationController
  def new
  end



   def create
     user = User.authenticate(params[:username], params[:password])
      # Save the user ID in the session so it can be used in
      # subsequent requests
      if user
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash.now.alert="Invalid email and password"
      render "new"
    end
  end


def destroy
  session[:user_id] = nil
  redirect_to root_url

end
end

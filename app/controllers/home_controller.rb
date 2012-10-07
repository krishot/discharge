class HomeController < ApplicationController
  
  def index 
  end  
  
  def reveal
  end
  
  def maker
  end
  
  def beat
  end
  
  def setup
  end  
  
  def settings
  end
  
  def logout
    client.logout if authenticated?
    render "index"
  end
  
  def login_error  
    # the target for /auth/salesforce/failure 
    @message = params[:message]
  end

  def sync
  end
  
  def debug
  end
  
end

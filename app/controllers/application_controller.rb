class ApplicationController < ActionController::Base
  protect_from_forgery

  
private
 def after_sign_in_for(resource_or_scope)
   user_path
 end
 
 def after_sign_up_for(resource_or_scope)
   user_path
 end
 
end

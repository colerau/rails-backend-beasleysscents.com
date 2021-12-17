class ApplicationController < ActionController::Base
  #! come back to this before deployment
  skip_before_action :verify_authenticity_token
end

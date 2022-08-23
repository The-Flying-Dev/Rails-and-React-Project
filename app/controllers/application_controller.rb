class ApplicationController < ActionController::Base
  #provides access to cookies to all children controllers
  include ActionController::Cookies
end

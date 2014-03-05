class ApplicationController < ActionController::Base
  protect_from_forgery
  include PublicActivity::StoreController

 	def redirect_to(options = {}, response_status = {})
	  if request.xhr?
	    render(:update) {|page| page.redirect_to(options)}
	  else
	    super(options, response_status)
	  end
	end
end

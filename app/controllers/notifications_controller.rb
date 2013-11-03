class NotificationsController < ApplicationController

	before_filter :authenticate_user!

	def index
		@user = current_user
		@notifications = PublicActivity::Activity.order('created_at desc')
		@friend_requests = @user.pending_invited_by
	end

end

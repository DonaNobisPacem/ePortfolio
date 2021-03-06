class FriendshipsController < ApplicationController
	before_filter :authenticate_user!

  def index
    @friends = current_user.friends
  end

  def new
    @users = User.all :conditions => ["id != ?", current_user.id]
  end

  def create
    invitee = User.find_by_id(params[:user_id])
    if current_user.invite invitee
      redirect_to invitee, :notice => "Successfully invited friend!"
    else
      redirect_to invitee, :notice => "Sorry! You can't invite that user!"
    end
  end

  def update
    inviter = User.find_by_id(params[:id])
    if current_user.approve inviter
      redirect_to current_user, :notice => "Successfully confirmed friend!"
    else
      redirect_to current_user, :notice => "Sorry! Could not confirm friend!"
    end
  end

  def requests
    @pending_requests = current_user.pending_invited_by
  end

  def invites
    @pending_invites = current_user.pending_invited
  end

  def destroy
    user = User.find_by_id(params[:id])
    if current_user.remove_friendship user
      redirect_to current_user, :notice => "Successfully removed friend!"
    else
      redirect_to current_user, :notice => "Sorry, couldn't remove friend!"
    end
  end
end

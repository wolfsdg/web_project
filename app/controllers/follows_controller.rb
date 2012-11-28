class FollowsController < ApplicationController

  def new 
    @user = User.find(params[:user_id])
    @follow = Follow.new
    @follow.followed_id = @user.id
    @follow.follower_id = current_user.id
    @follow.save 

    respond_to do |format|
      format.js 
    end 
  end

  def destroy
    @user = User.find(params[:user_id])
    @follow = Follow.find(params[:id])
    @follow.destroy

    respond_to do |format|
      format.js
    end
  end
end
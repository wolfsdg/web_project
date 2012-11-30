class FollowsController < ApplicationController

  def new 
    @user = User.find(params[:user_id])
    @follow = Follow.new
    @follow.user_id = @user.id
    @follow.follower_id = current_user.id
    @follow.save 

    respond_to do |format|
      format.html{redirect_to concerts_path, notice: "jjejej"}
      format.js 
    end 
  end

  def destroy
    @user = User.find(params[:user_id])
    @follow = Follow.find(params[:id])
    @follow.destroy

    respond_to do |format|
      format.html{redirect_to concerts_path, notice: "se jue"}
      format.js
    end
  end
end
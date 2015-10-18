class UsersController < ApplicationController
  def show
    @user = User.find(current_user)
  end

  def timeline
   current_user.all_following.each do |user|
      @followed_posts = user.posts 
   end
  end
end

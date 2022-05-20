class FriendsController < ApplicationController


  def index
    @users = User.all
    @friends = Friend.all.where(status: "pending")
    @ac_friend = Friend.all.where(status: "accepted")

  end

  def show
    @user = User.find(params[:id])
  end


  def create 
  # @friendship = current_user.friendships.build(:friend_id => params[:friend_id])  
  #   if @friendship.save  
  #     flash[:notice] = "Added friend."  
  #     redirect_to friends_path  
  #   else  
  #     flash[:notice] = "Unable to add friend."  
  #     redirect_to friends_path  
  #   end  
   end 
  
  def addfriend

    # binding.pry
   
     @friend = Friend.new(user_id: current_user,friend_id: params[:id],status:"pending")
     @friend.user = current_user

   if @friend.save  
      flash[:notice] = "Added friend."  
      redirect_to friends_path  
    else  
      flash[:notice] = @friend.errors      
      redirect_to friends_path 
    end  
  end
    def destroy
      @friend = Friend.find(params[:id])
      @friend.destroy
    end

end

class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end

#POST api/v1/users
  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: @user, status: :ok
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
  end
end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render json: @user, status: :ok
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end


  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      render json:@users
    end
  end

  def usersWithoutBuds
    @user = User.find(params[:user_id])
    @usersWithoutBuds = @user.usersWithoutBuds
    render json: @usersWithoutBuds, status: :ok
  end

  def friends
    @user=User.find(params[:user_id])
    @friends = @user.friends
    render json: @friends, status: :ok
  end

  def pendingFriends
    @user=User.find(params[:user_id])
    @pendingFriends = @user.pendingFriends
    render json: @pendingFriends, status: :ok
  end

  def pendingFrienders
    @user=User.find(params[:user_id])
    @pendingFrienders = @user.pendingFrienders
    render json: @pendingFrienders, status: :ok
  end

  def pendingFriendees
    @user=User.find(params[:user_id])
    @pendingFriendees = @user.pendingFriendees
    render json: @pendingFriendees, status: :ok
  end

  def myGroups
    @user=User.find(params[:user_id])
    @myGroups = @user.myGroups
    render json: @myGroups, status: :ok
  end



  private
  def user_params
    params.require(:user).permit(:name, :age, :username, :bio, :pic)
  end

end

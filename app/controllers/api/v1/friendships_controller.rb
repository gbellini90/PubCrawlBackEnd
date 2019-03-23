class Api::V1::FriendshipsController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    @friendships = Friendship.all
    render json: @friendships
  end

  def show
    @friendship = Friendship.find(params[:id])
    render json: @friendship, status: :ok
  end

#POST api/v1/friendships
  def create
    @friendship = Friendship.create(friendship_params)
    if @friendship.valid?
      render json: @friendship, status: :ok
    else
      render json: @friendship.errors.full_messages, status: :unprocessable_entity
  end
end

  def update
    @friendship = Friendship.find(params[:id])
    if @friendship.update(friendship_params)
      render json: @friendship, status: :ok
    else
      render json: @friendship.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    if @friendship.destroy
      render json:@friendships
    end
  end


  private
  def friendship_params
    params.require(:friendship).permit(:friendee_id, :friender_id, :accepted)
  end

end

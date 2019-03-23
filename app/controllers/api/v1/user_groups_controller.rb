class Api::V1::UserGroupsController < ApplicationController
  
  def index
    @user_groups = UserGroup.all
    render json: @user_groups
  end

  def show
    @user_group = UserGroup.find(params[:id])
    render json: @user_group, status: :ok
  end

#POST api/v1/user_group_bars
  def create
    @user_group = UserGroup.create(user_group_params)
    if @user_group.valid?
      render json: @user_group, status: :ok
    else
      render json: @user_group.errors.full_messages, status: :unprocessable_entity
  end
end

  def update
    @user_group = UserGroup.find(params[:id])
    if @user_group.update(user_group_params)
      render json: @user_group, status: :ok
    else
      render json: @user_group.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @user_group = UserGroup.find(params[:id])
    if @user_group.destroy
      render json:@user_groups
    end
  end

  private
  def user_group_params
    params.require(:user_group).permit(:user_id, :group_id)
  end

end

class Api::V1::GroupsController < ApplicationController

  def index
    @groups = Group.all
    render json: @groups
  end

  def show
    @group = Group.find(params[:id])
    render json: @group, status: :ok
  end

#POST api/v1/groups
  def create
    @group = Group.create(group_params)
    if @group.valid?
      render json: @group, status: :ok
    else
      render json: @group.errors.full_messages, status: :unprocessable_entity
  end
end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      render json: @group, status: :ok
    else
      render json: @group.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @group = Group.find(params[:id])
    if @group.destroy
      render json:@groups
    end
  end

  private
  def group_params
    params.require(:group).permit(:name, :creator_id)
  end

end

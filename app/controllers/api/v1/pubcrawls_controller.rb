class Api::V1::PubcrawlsController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show]

  def index
    @pubcrawls = Pubcrawl.all
    render json: @pubcrawls
  end

  def show
    @pubcrawl = Pubcrawl.find(params[:id])
    render json: @pubcrawl, status: :ok
  end

#POST api/v1/pubcrawl_bars
  def create
    @pubcrawl = Pubcrawl.create(pubcrawl_params)
    if @pubcrawl.valid?
      render json: @pubcrawl, status: :ok
    else
      render json: @pubcrawl.errors.full_messages, status: :unprocessable_entity
  end
end

  def update
    @pubcrawl = Pubcrawl.find(params[:id])
    if @pubcrawl.update(pubcrawl_params)
      render json: @pubcrawl, status: :ok
    else
      render json: @pubcrawl.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @pubcrawl = Pubcrawl.find(params[:id])
    if @pubcrawl.destroy
      render json:@pubcrawls
    end
  end

  private
  def pubcrawl_params
    params.require(:pubcrawl).permit(:group_id)
  end

end

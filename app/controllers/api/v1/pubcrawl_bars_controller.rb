class Api::V1::PubcrawlBarsController < ApplicationController

  def index
    @pubcrawl_bars = PubcrawlBar.all
    render json: @pubcrawl_bars
  end

  def show
    @pubcrawl_bar = PubcrawlBar.find(params[:id])
    render json: @pubcrawl_bar, status: :ok
  end

#POST api/v1/pubcrawl_bars
  def create
    @pubcrawl_bar = PubcrawlBar.create(pubcrawl_bar_params)
    if @pubcrawl_bar.valid?
      render json: @pubcrawl_bar, status: :ok
    else
      render json: @pubcrawl_bar.errors.full_messages, status: :unprocessable_entity
  end
end

  def update
    @pubcrawl_bar = PubcrawlBar.find(params[:id])
    if @pubcrawl_bar.update(pubcrawl_bar_params)
      render json: @pubcrawl_bar, status: :ok
    else
      render json: @pubcrawl_bar.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @pubcrawl_bar = PubcrawlBar.find(params[:id])
    if @pubcrawl_bar.destroy
      render json:@pubcrawl_bars
    end
  end

  private
  def pubcrawl_bar_params
    params.require(:pubcrawl_bar).permit(:bar_id, :pubcrawl_id)
  end

end

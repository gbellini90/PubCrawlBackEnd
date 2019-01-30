class Api::V1::BarsController < ApplicationController

  def index
    @bars = Bar.all
    render json: @bars
  end

  def show
    @bar = Bar.find(params[:id])
    render json: @bar, status: :ok
  end

#POST api/v1/bars
  def create
    @bar = Bar.create(bar_params)
    if @bar.valid?
      render json: @bar, status: :ok
    else
      render json: @bar.errors.full_messages, status: :unprocessable_entity
  end
end

  def update
    @bar = Bar.find(params[:id])
    if @bar.update(bar_params)
      render json: @bar, status: :ok
    else
      render json: @bar.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @bar = Bar.find(params[:id])
    if @bar.destroy
      render json:@bars
    end
  end

  private
  def bar_params
    params.require(:bar).permit(:name, :address, :description, :rating)
  end

end

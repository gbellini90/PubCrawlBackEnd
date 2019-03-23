class Api::V1::BarsController < ApplicationController

  API_HOST ="https://api.yelp.com"
  SEARCH_PATH="/v3/businesses/search"
  API_KEY=ENV["API_KEY"]


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
    # @bar = Bar.create(bar_params)
    @bar = Bar.find_or_create_by(bar_params)
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


  def search
      url = "#{API_HOST}#{SEARCH_PATH}"
      searchTerms = {
      categories: "bars, beergardens, karaoke, pianobars, barcrawl",
      term: "bars",
      limit:30,
      radius:1500,
      location: params[:location]}
      yelp = HTTP.auth("Bearer #{API_KEY}").get(url, params: searchTerms)
      parsed_data_yelp = JSON.parse(yelp)
      render json:parsed_data_yelp
  end


  private
  def bar_params
    params.require(:bar).permit(:name, :pic, :address, :rating, :price, :latitude, :longitude)
  end

end

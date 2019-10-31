class SearchController < ApplicationController
  def index
    @stocks = Stock.where("name LIKE ?", "%#params[:query]}%")
  end
end

class SearchController < ApplicationController
  def index
    @stocks = Stock.where("Name LIKE ?", "#{params[:query]}%")
  end
end

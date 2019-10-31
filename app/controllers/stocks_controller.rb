class StocksController < ApplicationController
  before_action :set_stock, only: [:show]

  def index
    @stocks = Stock.all
  end
  
  def show
#    @stock = Stock.find(params[:id])
  end

  private
  def set_stock
    @stock = Stock.find(params[:id])
  end

end

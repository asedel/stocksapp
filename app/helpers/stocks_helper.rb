module StocksHelper
  require 'digest/md5'

  def stock_image(stock)
    color = Digest::MD5.hexdigest(app.name)[0..5]
    "https://dummyimage.com/300x300/#{color}/ffffff.png&text=#{stock.name}"
  end
end

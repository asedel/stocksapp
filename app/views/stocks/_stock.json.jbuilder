json.extract! stock, :id, :Name, :Symbol, :Industry, :Sector, :Exchange, :SummaryQuote, :MarketCap, :IPOyear, :LastSale, :created_at, :updated_at
json.url stock_url(stock, format: :json)

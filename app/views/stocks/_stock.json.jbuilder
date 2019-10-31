json.extract! stock, :id, :Name, :Symbol, :Industry :Sector :Exchange :SummaryQuote :MarketCap :IPOYear :LastSale :created_at, :updated_at
json.url app_url(app, format: :json)

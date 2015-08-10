require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/parcels') do
  length = params.fetch('length').to_i
  width = params.fetch('width').to_i
  height = params.fetch('height').to_i
  weight = params.fetch('weight').to_i
  gift_wrap_option = params.fetch('gift_wrap')
  price_to_ship = Parcel.new(length, width, height, weight, gift_wrap_option).cost_to_ship()
  price_to_wrap = Parcel.new(length, width, height, weight, gift_wrap_option).gift_wrap?()
  @price_to_transport = '%.2f' % (price_to_ship + price_to_wrap)
  erb(:price)
end

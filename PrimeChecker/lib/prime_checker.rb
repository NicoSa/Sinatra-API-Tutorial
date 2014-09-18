require 'sinatra'
require 'json'
require 'prime_calc'

get '/prime/:number' do
	content_type :json
	number = params[:number].to_i
	{ prime: number.prime? }.to_json
end


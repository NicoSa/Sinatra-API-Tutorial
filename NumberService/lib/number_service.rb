require 'sinatra'
require 'json'
require 'httparty'

get '/:number' do
	content_type :json
	number = params[:number].to_i
	http_response = HTTParty.get("http://localhost:5001/prime/#{number}")
	{ number: number, prime: http_response.first.last }.to_json
end
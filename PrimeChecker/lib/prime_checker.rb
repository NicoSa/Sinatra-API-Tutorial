require 'sinatra'
require 'json'
require_relative './prime_calc.rb'

get '/prime/:number' do
	content_type :json
	number = params[:number].to_i
	{ prime: number.prime? }.to_json
end


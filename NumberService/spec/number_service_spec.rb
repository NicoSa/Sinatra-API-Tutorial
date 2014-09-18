require 'rspec'
require 'rack/test'
require 'number_service.rb'

include Rack::Test::Methods

def app
	Sinatra::Application
end

describe "Number service" do

	let(:result_json) { '{"number":7,"prime":true}' }

	it "should return a JSON" do
		get '/7'
		expect(last_response.headers['Content-Type']).to eq 'application/json'
	end

	it "should return a JSON containing the number and a boolean" do
		my_request = get '/7'
		expect(last_response.body).to eq result_json
	end

end
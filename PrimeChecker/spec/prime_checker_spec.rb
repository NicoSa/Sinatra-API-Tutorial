require 'rspec'
require 'rack/test'
require 'prime_checker'

include Rack::Test::Methods

def app
	Sinatra::Application
end

describe "Factorizer" do

	let(:test_json) { '{"prime":true}' }

	it "should return the factors of 6" do
		expect(6.factorize).to eq [1,2,3,6]
	end

	it "should say that 2 is prime" do
		expect(2.prime?).to be_truthy
	end

	it "should say that 10 is not prime" do
		expect(10.prime?).to be_falsy
	end

	it "should return json" do
		get '/prime/2'
		expect(last_response.headers['Content-Type']).to eq 'application/json'
	end

	it "should return the correct info about 6 as json" do
		my_request = get '/prime/2'
		expect(last_response.body).to eq test_json
	end

end


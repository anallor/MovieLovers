require_relative '../server.rb'
require 'rspec'
require 'rack/test'

describe 'Movie Lover' do
	include Rack::Test::Methods

def app
	Sinatra::Application
end

it "should load the index page" do
	get "/"
	expect(last_response).to be_ok
end

it "should load the search page" do
	get "/search"
	expect(last_response).to be_ok
end

end
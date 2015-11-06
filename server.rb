require 'sinatra'
require_relative './lib/movie.rb'



get "/" do
	erb(:index)
end

post "/search" do
	film = params[:search]
	@search = Imdb::Search.new(film)
	erb(:search)
end
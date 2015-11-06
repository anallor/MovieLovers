require 'imdb'

class Search

	def initialize(query)
		@query = query
	end

end

search = Imdb::Search.new("Annie Hall")












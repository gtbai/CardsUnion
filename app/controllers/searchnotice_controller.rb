class SearchnoticeController < ApplicationController
	def index
		@search = Notice.search(params[:search])
		@notices = @search.all   # load all matching records
	end

end

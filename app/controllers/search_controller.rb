class SearchController < ApplicationController
	def index
		  @search = Merchant.search(params[:search])
		  @merchants = @search.all   # load all matching records


		  # @articles = @search.relation # Retrieve the relation, to lazy-load in view
		  # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?

	end

end

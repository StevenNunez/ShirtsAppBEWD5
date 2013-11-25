class SearchController < ApplicationController
  def index
    query = params[:q]
    @shirts = Shirt.search_for query
  end
end

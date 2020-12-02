class SearchController < ApplicationController
  def search
  	search = params[:search]
  	@gyms = Gym.search(search)
  end
end

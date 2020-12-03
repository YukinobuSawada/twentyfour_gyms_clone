class SearchController < ApplicationController
  def search
    search = params[:search]
    @gyms = Gym.search(search).page(params[:page]).reverse_order
  end
end

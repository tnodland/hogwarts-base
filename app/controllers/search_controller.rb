class SearchController < ApplicationController
  def index
    house = params[:house]
    render locals: {
      facade: SearchFacade.new(house)
    }
  end
end

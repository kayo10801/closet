class ApplicationController < ActionController::Base
  def search
    @clothes = Clothe.search(params[:keyword])
  end
end

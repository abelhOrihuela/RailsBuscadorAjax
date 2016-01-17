class SearchController < ApplicationController
  def create
    palabra = "%#{params[:keyword]}%"

    @products= Product.all.where("name LIKE ? OR description LIKE ?", palabra, palabra)

    respond_to do |format|
      format.json { render json: @products }
      format.html { redirect_to root_path }
    end
  end
end

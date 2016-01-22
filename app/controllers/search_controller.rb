class SearchController < ApplicationController
  def create
    palabra = "%#{params[:keyword]}%"

    @products= Product.all.where("name LIKE ? OR description LIKE ?", palabra, palabra)
    puts @products.first.name + "*" *20
    respond_to do |format|
      format.json { render json: @products }
      format.html { redirect_to root_path }
      format.js
      #rails buscara un archivo create.js en relacion con el controlador
    end
  end
end

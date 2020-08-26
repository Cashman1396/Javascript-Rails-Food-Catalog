class CatalogsController < ApplicationController
    def index
      catalogs = Catalog.all
      render json: CatalogSerializer.new(catalogs)
    end 
  
    def show
      catalog = Catalog.find_by(id: params[:id])
      render json: CatalogSerializer.new(catalog).serializable_hash
    end 
  end
  
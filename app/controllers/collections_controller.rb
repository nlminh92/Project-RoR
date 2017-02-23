class CollectionsController < ApplicationController
  # before_action :set_collections, only: [:show, :edit]
  respond_to :html

	def index
    @collections = Collection.all
  end

  def edit
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new(collection_params)
    @collection.save
    respond_with(@collection)
  end

  def show
  end

  private

  def collection_params
      params.require(:collection).permit(:name_collections, :date_availability, :description, :image)
  end

end

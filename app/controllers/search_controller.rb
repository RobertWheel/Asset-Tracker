class SearchController < ApplicationController
  def index
  @query = params[:query]
  @category_id =  params[:category_id]
  @manufacturer_id = params[:manufacturer_id]
  @search = Search.new(@query)
  @devices = @search.results

  if @category_id.present?
     @devices = Device.where(category_id: @category_id)
  end
 end
end

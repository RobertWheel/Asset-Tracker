class SearchController < ApplicationController
  def index
  @query = params[:query]
  @category_id =  params[:category_id]


  @devices =Device.where("name like '%#{@query}%'")

  @manufacturer_id = params[:manufacturer_id]
  if @category_id.present?
     @devices = Device.where(category_id: @category_id)
  end
 end
end

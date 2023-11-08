class SearchController < ApplicationController
  def index
  @query = params[:query]
  @category_id =  params[:category_id]
  @manufacturer_id = params[:manufacturer_id]
  if @category_id.present?
  @devices = Device.where("name like '%#{@query}%'").where(category_id: @category_id)
    else
      @devices =Device.where("name like '%#{@query}%'")
      end
  end

end

class PagesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :page_not_found

  def show
    @page = Page.published.find_by_slug!(params[:id])
  end

  protected

  def page_not_found
    raise ActionController::RoutingError.new('Page Not Found')
  end
end

class DashboardsController < ApplicationController
  def index
    dashboards = Dashboard.all
    render json: dashboards
  end

  def create
    string_title = params[:title]
    dashboard = Dashboard.create(title: string_title)
    render json: dashboard
  end

  def show
    string_id = params[:id]
    dashboard = Dashboard.find(string_id)
    render json: dashboard
  end
end

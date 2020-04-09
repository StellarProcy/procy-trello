class ColumnsController < ApplicationController
  def index
    columns = Column.all
    render json: columns
  end

  def create
    string_title = params[:title]
    dashboard_id = params[:dashboard_id]
    column = Column.create(title: string_title, dashboard_id: dashboard_id)
    render json: column
  end

  def show
    string_id = params[:id]
    column = Column.find(string_id)
    render json: column
  end

  def destroy
    string_id = params[:id]
    column = Column.find(string_id)
    column.destroy
    render status: :ok, json: {}
  end
end

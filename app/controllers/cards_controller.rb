class CardsController < ApplicationController
  def index
    cards = Card.all
    render json: cards
  end

  def create
    string_title = params[:title]
    column_id = params[:column_id]
    card = Card.create(title: string_title, column_id: column_id)
    render json: card
  end

  def show
    string_id = params[:id]
    card = Card.find(string_id)
    render json: card
  end

  def update
    string_id = params[:id]
    string_title = params[:title]
    card = Card.find(string_id)
    card.update(title: string_title)
    render json: card
  end

  def destroy
    string_id = params[:id]
    card = Card.find(string_id)
    card.destroy
    render status: :ok, json: {}
  end
end

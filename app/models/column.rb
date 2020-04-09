class Column < ApplicationRecord
  has_many :cards
  belongs_to :dashboard
end

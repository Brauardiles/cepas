class Magazine < ApplicationRecord
  has_many :contracts
  has_many :enologist, through: :contracts
  has_many :positions, through: :contracts
end

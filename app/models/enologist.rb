class Enologist < ApplicationRecord
  has_many :contracts, dependent: :destroy
  has_many :magazines, through: :contracts
  has_many :positions, through: :contracts

  has_many :ratings, dependent: :destroy
  has_many :wines, through: :ratings

  accepts_nested_attributes_for :positions, reject_if: lambda {|attributes| attributes['id'].blank?}
  accepts_nested_attributes_for :magazines
  accepts_nested_attributes_for :contracts
end

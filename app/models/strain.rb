class Strain < ApplicationRecord
  has_many :assemblies
  has_many :wines, through: :assemblies

  def to_s
    name
  end
end

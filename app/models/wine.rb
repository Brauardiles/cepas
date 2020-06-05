class Wine < ApplicationRecord
  has_many :assemblies, dependent: :destroy
  has_many :strains, through: :assemblies

  has_many :ratings
  has_many :enologist, through: :ratings

  accepts_nested_attributes_for :strains
  accepts_nested_attributes_for :assemblies, reject_if: lambda {|attributes| attributes['percentage'].blank?}

  def wine_strains_names
    strains.map do |strain|
      search = assemblies.find_by(wine_id: id, strain_id: strain.id)
       strain.name + "(" + search.percentage.to_s + "%)"
    end
  end

  def wine_rates
    ratings.map(&:score).join("")
  end

end

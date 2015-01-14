class Voivodship < ActiveRecord::Base
  has_and_belongs_to_many :committees
  has_many :districts
  validates_presence_of :name, :councilman
  validates_numericality_of :councilman

end

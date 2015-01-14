class District < ActiveRecord::Base
  belongs_to :voivodship
  has_one :user
  has_many :votes
  validates_presence_of :name, :valid_votes, :voivodship_id
  validates_numericality_of :name, :valid_votes
end

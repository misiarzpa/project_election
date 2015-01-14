class Vote < ActiveRecord::Base
  belongs_to :district
  belongs_to :committee
  validates_presence_of :number, :district_id, :committee_id
  validates_numericality_of :number, :district_id, :committee_id
end

class Doctor < ActiveRecord::Base
  has_many :patient, dependent: :destroy
  belongs_to :specialization
end

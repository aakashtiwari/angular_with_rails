class Patient < ActiveRecord::Base
  belongs_to :doctor
  has_one :specialization, through: :doctor
  has_one :quote
end

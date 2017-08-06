class Specialization < ActiveRecord::Base
  has_many :patients, through: :doctors
  has_many :doctors
end

class RemovePatientIdFromSpecialization < ActiveRecord::Migration
  def change
    remove_column :specializations, :patient_id
  end
end

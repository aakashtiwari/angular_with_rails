class RemovePatientIdFromDoctor < ActiveRecord::Migration
  def change
    remove_column :doctors, :patient_id
  end
end

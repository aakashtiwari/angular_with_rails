class RemoveSpecializationIdFromPatient < ActiveRecord::Migration
  def change
    remove_column :patients, :specialization_id
  end
end

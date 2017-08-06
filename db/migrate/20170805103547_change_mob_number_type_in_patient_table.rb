class ChangeMobNumberTypeInPatientTable < ActiveRecord::Migration
  def change
    change_column :patients, :mob_number, :string
  end
end

class ChangeMobNumberTypeInDoctorTable < ActiveRecord::Migration
  def change
    change_column :doctors, :mob_number, :string
  end
end

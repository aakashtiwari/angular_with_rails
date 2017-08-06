class CreateSpecialization < ActiveRecord::Migration
  def change
    create_table :specializations do |t|
      t.string :name
      t.string :procedure
      t.integer :patient_id
      t.timestamps
    end
  end
end

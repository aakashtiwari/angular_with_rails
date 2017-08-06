class CreateDoctor < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :address
      t.string :email
      t.integer :mob_number
      t.integer :patient_id
      t.timestamps
    end
  end
end

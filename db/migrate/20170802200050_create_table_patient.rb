class CreateTablePatient < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.integer :mob_number
      t.string :email
      t.string :blood_type
      t.integer :specialization_id
      t.integer :doctor_id
      t.timestamps
    end
  end
end

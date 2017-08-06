class CreateTableQuote < ActiveRecord::Migration
  def change
    create_table :table_quotes do |t|
      t.string :procedure
      t.string :cost
      t.string :remark
      t.integer :patient_id
    end
  end
end

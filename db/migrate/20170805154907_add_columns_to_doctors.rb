class AddColumnsToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :specialization_id, :integer
  end
end

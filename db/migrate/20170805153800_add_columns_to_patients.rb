class AddColumnsToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :prescription, :string
    add_column :patients, :description, :string
    add_column :patients, :quote_id, :integer
    add_column :patients, :starred, :boolean
  end
end

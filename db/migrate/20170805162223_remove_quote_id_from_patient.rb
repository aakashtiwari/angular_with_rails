class RemoveQuoteIdFromPatient < ActiveRecord::Migration
  def change
    remove_column :patients, :quote_id
  end
end

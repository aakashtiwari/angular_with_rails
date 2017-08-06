class RenameTableQuoteToQuote < ActiveRecord::Migration
  def change
    rename_table :table_quotes, :quotes
  end
end

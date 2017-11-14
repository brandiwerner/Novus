class AddColumnsToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :time, :string
    add_column :events, :date, :string
    add_column :events, :location, :string
  end
end

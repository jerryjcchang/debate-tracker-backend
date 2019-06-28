class AddClimateChange < ActiveRecord::Migration[6.0]
  def change
    add_column :candidates, :cg, :integer, :default => 3
  end
end

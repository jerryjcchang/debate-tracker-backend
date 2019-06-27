class AddIssues < ActiveRecord::Migration[6.0]
  def change
    add_column :candidates, :fp, :integer, :default => 3
    add_column :candidates, :hc, :integer, :default => 3
    add_column :candidates, :ec, :integer, :default => 3
    add_column :candidates, :im, :integer, :default => 3
    add_column :candidates, :gc, :integer, :default => 3
  end
end

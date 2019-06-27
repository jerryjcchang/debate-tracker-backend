class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :img_url
      t.integer :poll
      t.integer :age
      t.string :title

      t.timestamps
    end
  end
end

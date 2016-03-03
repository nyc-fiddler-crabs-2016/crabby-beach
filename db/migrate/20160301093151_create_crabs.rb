class CreateCrabs < ActiveRecord::Migration
  def change
    create_table :crabs do |t|
      t.string :name, null: false
      t.string :direction
      t.integer :claw_size
      t.string :disposition

      t.references :beach, index: true

      t.timestamps null: false
    end
  end
end

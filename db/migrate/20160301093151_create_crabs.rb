class CreateCrabs < ActiveRecord::Migration
  def change
    create_table :crabs do |t|
      t.string :name, null: false
      t.string :direction
      t.integer :claw_size
      t.string :disposition
      t.string :password_digest

      t.references :beach, index: true
      # t.belongs_to :beach, index: true
      # t.integer :beach_id, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end

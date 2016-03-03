class CreateBeaches < ActiveRecord::Migration
  def change
    create_table :beaches do |t|
      t.string :location, null: false

      t.timestamps null: false
    end
  end
end

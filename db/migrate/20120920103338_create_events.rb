class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :due_at
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end

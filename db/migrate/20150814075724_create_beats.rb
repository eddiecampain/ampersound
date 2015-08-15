class CreateBeats < ActiveRecord::Migration
  def change
    create_table :beats do |t|
      t.string :title
      t.string :description
      t.string :genre

      t.timestamps null: false
    end
  end
end

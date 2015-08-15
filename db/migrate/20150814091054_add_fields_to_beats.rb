class AddFieldsToBeats < ActiveRecord::Migration
  def change
    add_column :beats, :released_on, :date
  end
end

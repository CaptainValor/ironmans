class CreateWsets < ActiveRecord::Migration
  def change
    create_table :wsets do |t|
      t.integer :reps
      t.integer :duration

      t.timestamps
    end
  end
end

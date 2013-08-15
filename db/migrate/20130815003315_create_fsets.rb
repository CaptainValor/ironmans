class CreateFsets < ActiveRecord::Migration
  def change
    create_table :fsets do |t|
      t.integer :reps
      t.integer :duration

      t.timestamps
    end
  end
end

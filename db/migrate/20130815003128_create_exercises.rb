class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :type

      t.timestamps
    end
  end
end

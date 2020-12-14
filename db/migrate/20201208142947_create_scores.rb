class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.string :game
      t.string :name
      t.integer :score
    end
  end
end

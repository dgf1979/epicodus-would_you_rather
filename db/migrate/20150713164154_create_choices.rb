class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :option_a
      t.string :option_b
      t.integer :option_a_votes
      t.integer :option_b_votes

      t.timestamps null: false
    end
  end
end

class UpdateChoices < ActiveRecord::Migration
  def change
    change_column_default(:choices, :option_a_votes, 0)
    change_column_default(:choices, :option_b_votes, 0)
  end
end

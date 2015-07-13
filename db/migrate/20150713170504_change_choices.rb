class ChangeChoices < ActiveRecord::Migration
  def change
    rename_column :choices, :option_1_image, :option_a_image
    rename_column :choices, :option_2_image, :option_b_image
  end
end

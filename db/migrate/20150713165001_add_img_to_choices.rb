class AddImgToChoices < ActiveRecord::Migration
  def change
    add_column :choices, :option_1_image, :string
    add_column :choices, :option_2_image, :string
    add_column :choices, :option, :string
  end
end

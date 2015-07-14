require 'rails_helper'

describe "Choices" do
  it "should add a choice" do
    visit new_choice_path

    fill_in "Option", with: "Would you rather code in"
    fill_in "Option a", with: "Ruby"
    fill_in "Option b", with: "Javascript"

    click_on 'Create Choice'

    save_and_open_screenshot
    expect(page).to  have_content("Javascript") && have_content("Ruby")
  end
end

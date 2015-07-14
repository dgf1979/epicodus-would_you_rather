require 'rails_helper'

describe "the add a choice process" do
  it "should add a choice" do
    visit new_choice_path
    fill_in "Option", with: "Would you rather code in"
    fill_in "Option a", with: "Ruby"
    fill_in "Option b", with: "Javascript"
    click_on 'Create Choice'
    expect(page).to  have_content("Javascript") && have_content("Ruby")
  end

  it "should fail to add a choice given insufficient input" do
    visit new_choice_path
    fill_in "Option", with: ""
    fill_in "Option a", with: "Ruby"
    fill_in "Option b", with: "Javascript"
    click_on 'Create Choice'
    expect(page).to  have_content("error")
  end
end

describe "view choices" do
  it "should show a single choice" do
    choice_one = Choice.create({ option: "Would you rather", option_a: "this", option_b: "that" })
    visit choice_path(choice_one)
    expect(page).to have_content("Would you rather")
  end

  it "should show a list of choices" do
    choice_one = Choice.create({ option: "Would you rather", option_a: "this", option_b: "that" })
    choice_two = Choice.create({ option: "Would you prefer", option_a: "that", option_b: "this" })
    visit choices_path
    expect(page).to have_content("Would you rather") && have_content("Would you prefer")
  end
end

describe "destroy choice" do
  it "should delete the choice" do
    choice_one = Choice.create({ option: "Would you like to", option_a: "this", option_b: "that" })
    visit choice_path(choice_one)
    click_on "Menu"
    click_on "Delete this Choice"
    expect(page).to_not have_content("Would you like to") 
  end
end

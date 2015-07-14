require 'rails_helper'

describe "the add a comment process" do
  it "should add a comment" do
    choice_one = Choice.create({ option: "Would you rather", option_a: "this", option_b: "that" })
    visit choice_path(choice_one)
    fill_in "Text", with: "This is a comment"
    click_on 'Comment'
    expect(page).to  have_content("This is a comment")
  end

  it "should fail to add an empty comment" do
    choice_one = Choice.create({ option: "Would you rather", option_a: "this", option_b: "that" })
    visit choice_path(choice_one)
    fill_in "Text", with: ""
    click_on 'Comment'
    expect(page).to have_content("error")
  end

end

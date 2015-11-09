require "rails_helper"

feature "User creates Todo" do
  scenario "successfully" do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "Buy milk"
    click_on "Submit"
#    save_and_open_page
    expect(page).to have_css '.todos li', text: "Buy milk"
  end
end

require "rails_helper"

feature "User completes todo" do
  scenario "successfully" do
    sign_in

    create_todo "Buy milk"
    expect(page).to display_todo "Buy milk"

    click_on "Mark Complete"
    expect(page).to display_completed_todo "Buy milk"


#    save_and_open_page
  end
end

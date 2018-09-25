require "rails_helper"

RSpec.feature "Publish", :type => :feature do
  scenario "adding publishes allow a user to add publish" do
    visit "/publishes/new"

    click_button "submit"

    expect(page).to have_text("Success!")
  end
 end

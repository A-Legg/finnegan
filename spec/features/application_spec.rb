require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"
  end

  scenario 'user can visit about page' do
    visit '/'
    click_on "About"
    expect(page).to have_content "About Not much to say here."
  end

  scenario 'user can create new gifs' do
    visit '/'
    click_on 'New gifs'

    fill_in "Title", with: "Description"
    click_on 'Create gifs'
    expect(page).to have_content "www.test.com Description"
  end
end

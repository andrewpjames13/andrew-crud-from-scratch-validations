require 'rails_helper'

describe 'User can CRUD status' do

  before :each do
    visit "/"
  end

  scenario "User can create a status" do

    fill_in 'Status', :with => "TestStatus"
    fill_in 'User', :with => "TestUser"

    click_on "Create Status"
    expect(page).to have_content("Project was Created")
  end

  scenario "User can like a status" do

    fill_in 'Status', :with => "TestStatus"
    fill_in 'User', :with => "TestUser"

    click_on "Create Status"
    expect(page).to have_content("Project was Created")

    click_on "like"
    expect(page).to have_content(1)
  end

  scenario "User can Edit a status" do

    fill_in 'Status', :with => "TestStatus"
    fill_in 'User', :with => "TestUser"

    click_on "Create Status"
    expect(page).to have_content("Project was Created")

    click_on "Edit"
    expect(page).to have_content("Status")

    fill_in 'Status', :with => "TestEdit"
    click_on "Update Status"
    expect(page).to have_content("Project was Updated")
  end

  scenario "User can delete a status" do

    fill_in 'Status', :with => "TestStatus"
    fill_in 'User', :with => "TestUser"

    click_on "Create Status"
    expect(page).to have_content("Project was Created")

    click_on "Delete"
    expect(page).to have_content("Project was Deleted")
  end

end

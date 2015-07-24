require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!


describe "the add a country process" do
  it "adds a country to the home page" do
    admin = FactoryGirl.create(:admin)
    login_as(admin)
    visit countries_path
    click_link "Add country"
    fill_in 'Country name', :with => 'Nepal'
    fill_in 'Continent', :with => 'Asia'
    fill_in 'Describe this country', :with => 'long description'
    click_on 'Add country'
    expect(page).to have_content 'Nepal'
  end

  it "destroys a country", js:true do
    FactoryGirl.create(:country)
    admin = FactoryGirl.create(:admin)
    login_as(admin)
    visit countries_path
    click_on "USA"
    click_on "Delete country"
    expect(page).to have_no_content 'USA'
    expect(page).to have_content 'All countries'
  end

  it "gives an error when a required country field is not entered" do
    admin = FactoryGirl.create(:admin)
    login_as(admin)
    visit countries_path
    click_link "Add country"
    fill_in 'Country name', :with => ''
    fill_in 'Continent', :with => 'Asia'
    fill_in 'Describe this country', :with => 'long description'
    click_on 'Add country'
    expect(page).to have_content 'Add Country'
    expect(page).to have_content 'blank'
  end

end

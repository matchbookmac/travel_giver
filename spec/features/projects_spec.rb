require 'rails_helper'


describe "the project process", js:true do
  it "allows users to see projects in countries" do
    FactoryGirl.create(:country)
    FactoryGirl.create(:project)
    user = FactoryGirl.create(:user)
    login_as(user)
    visit countries_path
    click_on "USA"
    expect(page).to have_content 'Project for USA'
  end

  # broken because of paperclip/phantom issues: delete lines 4-7 of _project.html.erb for test to work
  it "adds a project to a country and then edits that project", js:true do
    country = FactoryGirl.create(:country)
    admin = FactoryGirl.create(:admin)
    login_as(admin)
    visit new_country_project_path(country)
    fill_in 'Project name', :with => 'Need lotsa cars'
    fill_in 'Describe this project', :with => 'short description'
    fill_in 'Total Amount Needed', :with => '50'
    click_on 'Create Project'
    click_on 'USA'
    expect(page).to have_content 'Need lotsa cars'
    click_on 'Need lotsa cars'
    click_link 'Edit Project'
    fill_in "Project name", :with => 'Need lotsa trees'
    click_on 'Update Project'
    click_on 'USA'
    expect(page).to have_content 'Need lotsa trees'

  end

  # broken because of paperclip/phantom issues: delete lines 4-7 of _project.html.erb for test to work
  it "destroys a project within a country", js:true do
    FactoryGirl.create(:country)
    FactoryGirl.create(:project)
    admin = FactoryGirl.create(:admin)
    login_as(admin)
    visit countries_path
    click_on "USA"
    click_on "Project for USA"
    click_on "Delete Project"
    click_on "USA"
    expect(page).to have_no_content 'Project for USA'
    expect(page).to have_content 'Its a country'
  end
end

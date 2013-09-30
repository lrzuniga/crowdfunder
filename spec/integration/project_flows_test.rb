require 'spec_helper'

describe "Project Listing" do
  describe "when visiting the index page" do

    it "should display the navigation" do
      # Visit the root URL
      visit "/"
      # Expect the page we're on is root
      expect(current_path).to eq(root_path)
      # Expect the home nav element is active
      page.should have_selector('.navbar ul li.active a', text: "Home")
      expect(page).to have_selector('.navbar ul li.active a', text: "Home")

      # Click on the link to Projects
      page.find('.navbar ul').click_link('Projects')
      # Expect the page we're on is the projects page
      expect(current_path).to eq(projects_path)

      # Expect the projects nav element is active
      page.should have_selector('.navbar ul li.active a', text: "Projects") 
      expect(page).to have_selector('.navbar ul li.active a', text: "Projects")
    end    
  end
end
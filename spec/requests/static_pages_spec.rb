require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      # response.status.should be(200)
      page.should have_content('Sample App')
    end

    it "should have the right title 'Sample APP'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do
  	it "should have the content 'Help' " do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end

    it "should have the right title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
  	it "should have the content 'About' " do
  		visit '/static_pages/about'
  		page.should have_content('About')
  	end
  end
    it "should have the right title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About")
    end

end
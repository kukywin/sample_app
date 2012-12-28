require 'spec_helper'

describe "StaticPages" do
  subject { page }
  describe "Home page" do
    before { visit root_path }
    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) } 
    it { should_not have_selector('title', text: '| Home') }
  end

  describe "Help page" do
    before { visit help_path }
  	it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title('Help') }
  end

  describe "About page" do
    before { visit about_path }

  	it { should have_selector('h1', text: 'About') }
    it { should have_selector('title', text: full_title('About')) }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: full_title("Contact")) } 
  end
end

# new method of spec_
# require 'spec_helper'

# describe "Static pages" do

#   subject { page }

#   shared examples for "all static pages" do
#     it { should have_selector('h1', text: heading) }
#     it { should have_selector('title', text: full_title(page_title)) }
#   end

#   describe "Home page" do
#     before { visit root_path }
#     let(:heading) { 'Sample App' }
#     let(:page_title) { '' }

#     it should behave like "all static pages"
#     it { should_not have_selector 'title', text: '| Home' }
#   end

  # describe "Help page" do
  #   before { visit help_path }
  #   let(:heading) { 'Help' }
  #   let(:page_title) { 'Help' }

  #   it should behave like "all static pages"
  # end

  # describe "About page" do
  #   before { visit about_path }
  #   let(:heading) { 'About' }
  #   let(:page_title) { 'About' }

  #   it should behave like "all static pages"

  # end

  # describe "Contact page" do
  #   before { visit contact_path }
  #   let(:heading) { 'Contact' }
  #   let(:page_title) { 'Contact' }

  #   it should behave like "all static pages"
  # end
# end


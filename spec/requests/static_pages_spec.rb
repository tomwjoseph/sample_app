require 'spec_helper'

describe "StaticPages" do
	
  describe "Home Page" do
  	
    it "should have the contect 'Sample App' " do
    	visit '/static_pages/home'
    	page.should have_content('Sample App')
    end
  end # home page do
  
  
  describe "Help Page" do
  	it "should have contect 'Help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end # 
	end # help page do

  describe "About Page" do
  	it "should have contect 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_content('About Us')
  	end # 
	end # about page do	
  
end # staticpages do

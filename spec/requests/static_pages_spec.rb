require 'spec_helper'

describe "StaticPages" do
	
	let (:base_title) { "Ruby on Rails Tutorial Sample App" }
	
  describe "Home Page" do
  	
    it "should have the content 'Sample App' " do
    	visit '/static_pages/home'
    	page.should have_selector('h1',
    														:text => "Sample App") 
    end
    
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
      					:text => "#{base_title}")
    end 
    
    it "should not have custom page title" do
    	visit '/static_pages/home'
    	page.should_not have_selector('title',
    						:text => ' | Home')
  	end   
    
  end # home page do
  
  
  describe "Help Page" do
  	
  	it "should have content 'Help'" do
  		visit '/static_pages/help'
    	page.should have_selector('h1',
    														:text => "Help") 
  	end 

    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
      					:text => "#{base_title} | Help")
    end   	
	end # help page do

  describe "About Page" do
  	it "should have content 'About Us'" do
  		visit '/static_pages/about'
    	page.should have_selector('h1',
    														:text => "About Us") 
  	end 

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
      					:text => "#{base_title} | About")
    end 
      	
	end # about page do	
	
  describe "Contact Page" do
  	it "should have content 'Contact Us'" do
  		visit '/static_pages/contact'
    	page.should have_selector('h1',
    														:text => "Contact Us") 
  	end 

    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title',
      					:text => "#{base_title} | Contact Us")
    end 
      	
	end # contact page do		
  
end # staticpages do

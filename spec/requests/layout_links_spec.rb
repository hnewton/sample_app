require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end
  
  it "should have a Help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end
  
  it "should have a Sign up page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Signup")
  end
  
  it "should have the right links in the layout"
    visit root_path
    response.should have_selector('title', :content => "Home")
    click link "About"
    response.should have_selector('title', :content => "About")
    click link "Contact"
    response.should have_selector('title', :content => "Contact")
    click link "Help"
    response.should have_selector('title', :content => "Help")
    click link "Sign up now!"
    response.should have_selector('title', :content => "Sign up")
    response.should have_selector('a[href="/"]>img')
    
  end
end

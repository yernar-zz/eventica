require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Eventica'" do
      visit '/static_pages/home'
      page.should have_content('Eventica')
    end
  end
end
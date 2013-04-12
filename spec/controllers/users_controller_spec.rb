require 'spec_helper'

describe UsersController do
  render_views

  describe "GET 'new'" do
    it "devrait r�ussir" do
      get 'new'
      response.should be_success
    end

    it "devrait avoir le titre ad�quat" do
      get 'new'
      response.should have_selector("title", :content => "Inscription")
    end
  end
end
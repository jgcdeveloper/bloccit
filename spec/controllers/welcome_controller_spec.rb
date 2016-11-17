require 'rails_helper'

#Describe the SPEC Subject - WelcomeController. Indicate it is type controller
RSpec.describe WelcomeController, type: :controller do

  #Test that we can render an index page
  describe "GET index" do
    it "renders the index template" do

      #This will get the index method from WelcomeController
      get :index

      #We expect a response which will render the "index" template
      expect(response).to render_template("index")

    end
  end

  #Test that we can render an about page
  describe "GET about" do
    it "renders the about template" do

      #This will get the index method from WelcomeController
      get :about

      #We expect a response which will render the "index" template
      expect(response).to render_template("about")

    end
  end

  #Test that we can render a FAQ page
  describe "GET FAQ" do
    it "renders the FAQ template" do
      #This will get the FAQ method from WelcomeController
      get :FAQ

      #We expect a response from "FAQ"
      expect(response).to render_template("FAQ")
    end
  end

end

require 'spec_helper'

describe DesignController do

  describe "GET 'introduction'" do
    it "returns http success" do
      get 'introduction'
      response.should be_success
    end
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end

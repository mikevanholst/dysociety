require 'spec_helper'

describe "allies/show" do
  before(:each) do
    @ally = assign(:ally, stub_model(Ally,
      :name => "Name",
      :url => "Url",
      :logo => "Logo",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Url/)
    rendered.should match(/Logo/)
    rendered.should match(/Description/)
  end
end

require 'spec_helper'

describe "allies/index" do
  before(:each) do
    assign(:allies, [
      stub_model(Ally,
        :name => "Name",
        :url => "Url",
        :logo => "Logo",
        :description => "Description"
      ),
      stub_model(Ally,
        :name => "Name",
        :url => "Url",
        :logo => "Logo",
        :description => "Description"
      )
    ])
  end

  it "renders a list of allies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Logo".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end

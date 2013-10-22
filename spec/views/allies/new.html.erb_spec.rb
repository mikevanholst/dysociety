require 'spec_helper'

describe "allies/new" do
  before(:each) do
    assign(:ally, stub_model(Ally,
      :name => "MyString",
      :url => "MyString",
      :logo => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new ally form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", allies_path, "post" do
      assert_select "input#ally_name[name=?]", "ally[name]"
      assert_select "input#ally_url[name=?]", "ally[url]"
      assert_select "input#ally_logo[name=?]", "ally[logo]"
      assert_select "input#ally_description[name=?]", "ally[description]"
    end
  end
end

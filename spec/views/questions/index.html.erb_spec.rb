require 'spec_helper'

describe "questions/index" do
  before(:each) do
    assign(:questions, [
      stub_model(Question,
        :text => "Text",
        :right => "Right",
        :wrong_1 => "Wrong 1",
        :wrong_2 => "Wrong 2",
        :wrong_3 => "Wrong 3",
        :success => "Success",
        :failure => "Failure"
      ),
      stub_model(Question,
        :text => "Text",
        :right => "Right",
        :wrong_1 => "Wrong 1",
        :wrong_2 => "Wrong 2",
        :wrong_3 => "Wrong 3",
        :success => "Success",
        :failure => "Failure"
      )
    ])
  end

  it "renders a list of questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "Right".to_s, :count => 2
    assert_select "tr>td", :text => "Wrong 1".to_s, :count => 2
    assert_select "tr>td", :text => "Wrong 2".to_s, :count => 2
    assert_select "tr>td", :text => "Wrong 3".to_s, :count => 2
    assert_select "tr>td", :text => "Success".to_s, :count => 2
    assert_select "tr>td", :text => "Failure".to_s, :count => 2
  end
end

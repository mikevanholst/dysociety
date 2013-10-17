require 'spec_helper'

describe "quizzes/index" do
  before(:each) do
    assign(:quizzes, [
      stub_model(Quiz,
        :name => "Name",
        :size => 1,
        :score => 2,
        :success => "Success",
        :failure => "Failure"
      ),
      stub_model(Quiz,
        :name => "Name",
        :size => 1,
        :score => 2,
        :success => "Success",
        :failure => "Failure"
      )
    ])
  end

  it "renders a list of quizzes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Success".to_s, :count => 2
    assert_select "tr>td", :text => "Failure".to_s, :count => 2
  end
end

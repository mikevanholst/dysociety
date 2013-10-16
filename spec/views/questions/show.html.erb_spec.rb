require 'spec_helper'

describe "questions/show" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :text => "Text",
      :right => "Right",
      :wrong_1 => "Wrong 1",
      :wrong_2 => "Wrong 2",
      :wrong_3 => "Wrong 3",
      :success => "Success",
      :failure => "Failure"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Text/)
    rendered.should match(/Right/)
    rendered.should match(/Wrong 1/)
    rendered.should match(/Wrong 2/)
    rendered.should match(/Wrong 3/)
    rendered.should match(/Success/)
    rendered.should match(/Failure/)
  end
end

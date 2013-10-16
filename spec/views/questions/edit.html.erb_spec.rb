require 'spec_helper'

describe "questions/edit" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :text => "MyString",
      :right => "MyString",
      :wrong_1 => "MyString",
      :wrong_2 => "MyString",
      :wrong_3 => "MyString",
      :success => "MyString",
      :failure => "MyString"
    ))
  end

  it "renders the edit question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", question_path(@question), "post" do
      assert_select "input#question_text[name=?]", "question[text]"
      assert_select "input#question_right[name=?]", "question[right]"
      assert_select "input#question_wrong_1[name=?]", "question[wrong_1]"
      assert_select "input#question_wrong_2[name=?]", "question[wrong_2]"
      assert_select "input#question_wrong_3[name=?]", "question[wrong_3]"
      assert_select "input#question_success[name=?]", "question[success]"
      assert_select "input#question_failure[name=?]", "question[failure]"
    end
  end
end

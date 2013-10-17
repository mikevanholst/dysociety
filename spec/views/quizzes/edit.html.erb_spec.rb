require 'spec_helper'

describe "quizzes/edit" do
  before(:each) do
    @quiz = assign(:quiz, stub_model(Quiz,
      :name => "MyString",
      :size => 1,
      :score => 1,
      :success => "MyString",
      :failure => "MyString"
    ))
  end

  it "renders the edit quiz form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", quiz_path(@quiz), "post" do
      assert_select "input#quiz_name[name=?]", "quiz[name]"
      assert_select "input#quiz_size[name=?]", "quiz[size]"
      assert_select "input#quiz_score[name=?]", "quiz[score]"
      assert_select "input#quiz_success[name=?]", "quiz[success]"
      assert_select "input#quiz_failure[name=?]", "quiz[failure]"
    end
  end
end

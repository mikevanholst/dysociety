require 'spec_helper'

describe "quizzes/new" do
  before(:each) do
    assign(:quiz, stub_model(Quiz,
      :name => "MyString",
      :size => 1,
      :score => 1,
      :success => "MyString",
      :failure => "MyString"
    ).as_new_record)
  end

  it "renders new quiz form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", quizzes_path, "post" do
      assert_select "input#quiz_name[name=?]", "quiz[name]"
      assert_select "input#quiz_size[name=?]", "quiz[size]"
      assert_select "input#quiz_score[name=?]", "quiz[score]"
      assert_select "input#quiz_success[name=?]", "quiz[success]"
      assert_select "input#quiz_failure[name=?]", "quiz[failure]"
    end
  end
end

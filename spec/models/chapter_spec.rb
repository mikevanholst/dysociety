require 'spec_helper'

describe Chapter do
  let!(:chapter) {FactoryGirl.create(:chapter)}
  
  it "should have a valid factory" do
    chapter.should be_valid
  end

  # it {should validate_presence_of(:title)}
  # it {should validate_presence_of(:teaser)}
  # it {should validate_presence_of(:content)}
  # it {should validate_presence_of(:seats)}

  
  # expect(chapter).to be_valid
end

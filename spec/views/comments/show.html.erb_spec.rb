require 'spec_helper'

describe "comments/show" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :comments => "Comments",
      :user => nil,
      :Post => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Comments/)
    rendered.should match(//)
    rendered.should match(//)
  end
end

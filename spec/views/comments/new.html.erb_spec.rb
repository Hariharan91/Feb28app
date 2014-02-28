require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :comments => "MyString",
      :user => nil,
      :Post => nil
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comments_path, "post" do
      assert_select "input#comment_comments[name=?]", "comment[comments]"
      assert_select "input#comment_user[name=?]", "comment[user]"
      assert_select "input#comment_Post[name=?]", "comment[Post]"
    end
  end
end

require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :Title => "MyString",
      :Content => "MyString",
      :user => nil
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "input#post_Title[name=?]", "post[Title]"
      assert_select "input#post_Content[name=?]", "post[Content]"
      assert_select "input#post_user[name=?]", "post[user]"
    end
  end
end

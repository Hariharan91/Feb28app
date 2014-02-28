require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :Title => "MyString",
      :Content => "MyString",
      :user => nil
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", post_path(@post), "post" do
      assert_select "input#post_Title[name=?]", "post[Title]"
      assert_select "input#post_Content[name=?]", "post[Content]"
      assert_select "input#post_user[name=?]", "post[user]"
    end
  end
end

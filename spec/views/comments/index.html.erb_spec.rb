require 'spec_helper'

describe "comments/index" do
  before(:each) do
    assign(:comments, [
      stub_model(Comment,
        :comments => "Comments",
        :user => nil,
        :Post => nil
      ),
      stub_model(Comment,
        :comments => "Comments",
        :user => nil,
        :Post => nil
      )
    ])
  end

  it "renders a list of comments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Comments".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

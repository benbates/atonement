require 'spec_helper'

describe "sins/edit" do
  before(:each) do
    @sin = assign(:sin, stub_model(Sin,
      :calories => 1,
      :user_id => 1
    ))
  end

  it "renders the edit sin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sins_path(@sin), :method => "post" do
      assert_select "input#sin_calories", :name => "sin[calories]"
      assert_select "input#sin_user_id", :name => "sin[user_id]"
    end
  end
end

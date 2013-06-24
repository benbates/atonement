require 'spec_helper'

describe "sin_types/edit" do
  before(:each) do
    @sin_type = assign(:sin_type, stub_model(SinType,
      :name => "MyString",
      :calories => 1
    ))
  end

  it "renders the edit sin_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sin_types_path(@sin_type), :method => "post" do
      assert_select "input#sin_type_name", :name => "sin_type[name]"
      assert_select "input#sin_type_calories", :name => "sin_type[calories]"
    end
  end
end

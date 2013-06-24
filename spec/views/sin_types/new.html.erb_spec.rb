require 'spec_helper'

describe "sin_types/new" do
  before(:each) do
    assign(:sin_type, stub_model(SinType,
      :name => "MyString",
      :calories => 1
    ).as_new_record)
  end

  it "renders new sin_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sin_types_path, :method => "post" do
      assert_select "input#sin_type_name", :name => "sin_type[name]"
      assert_select "input#sin_type_calories", :name => "sin_type[calories]"
    end
  end
end

require 'spec_helper'

describe "sin_types/index" do
  before(:each) do
    assign(:sin_types, [
      stub_model(SinType,
        :name => "Name",
        :calories => 1
      ),
      stub_model(SinType,
        :name => "Name",
        :calories => 1
      )
    ])
  end

  it "renders a list of sin_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

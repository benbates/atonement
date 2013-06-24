require 'spec_helper'

describe "sin_types/show" do
  before(:each) do
    @sin_type = assign(:sin_type, stub_model(SinType,
      :name => "Name",
      :calories => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end

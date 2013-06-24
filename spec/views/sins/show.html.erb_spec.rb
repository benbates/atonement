require 'spec_helper'

describe "sins/show" do
  before(:each) do
    @sin = assign(:sin, stub_model(Sin,
      :calories => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end

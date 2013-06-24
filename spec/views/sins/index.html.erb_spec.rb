require 'spec_helper'

describe "sins/index" do
  before(:each) do
    assign(:sins, [
      stub_model(Sin,
        :calories => 1,
        :user_id => 2
      ),
      stub_model(Sin,
        :calories => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of sins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

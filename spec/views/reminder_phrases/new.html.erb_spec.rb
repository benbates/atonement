require 'spec_helper'

describe "reminder_phrases/new" do
  before(:each) do
    assign(:reminder_phrase, stub_model(ReminderPhrase,
      :phrase => "MyString"
    ).as_new_record)
  end

  it "renders new reminder_phrase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reminder_phrases_path, :method => "post" do
      assert_select "input#reminder_phrase_phrase", :name => "reminder_phrase[phrase]"
    end
  end
end

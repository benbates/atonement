require 'spec_helper'

describe "reminder_phrases/edit" do
  before(:each) do
    @reminder_phrase = assign(:reminder_phrase, stub_model(ReminderPhrase,
      :phrase => "MyString"
    ))
  end

  it "renders the edit reminder_phrase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reminder_phrases_path(@reminder_phrase), :method => "post" do
      assert_select "input#reminder_phrase_phrase", :name => "reminder_phrase[phrase]"
    end
  end
end

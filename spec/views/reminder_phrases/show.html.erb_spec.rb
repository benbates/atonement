require 'spec_helper'

describe "reminder_phrases/show" do
  before(:each) do
    @reminder_phrase = assign(:reminder_phrase, stub_model(ReminderPhrase,
      :phrase => "Phrase"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phrase/)
  end
end

require 'spec_helper'

describe "ReminderPhrases" do
  describe "GET /reminder_phrases" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get reminder_phrases_path
      response.status.should be(200)
    end
  end
end

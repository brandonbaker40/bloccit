require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title: "New Question Title", body: "New Question Body", resolved: "Is this question resolved?") }

  describe "attributes" do
    it "has title, body, and resolved attributes" do
      expect(question).to have_attributes(title: "New Post Title", body: "New Post Body", resolved: "Is this question resolved?")
    end
  end
end

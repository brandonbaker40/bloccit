require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:sponsored_post) { SponsoredPost.create!(title: "New SponsoredPost Title", body: "New SponsoredPost Body", price: 0) }

  it { is_expected.to belong_to(:topic) }

  describe "attributes" do
    it "has title, body, and price attributes" do
      expect(sponsored_post).to have_attributes(title: "New SponsoredPost Title", body: "New SponsoredPost Body", price: 0)
    end
  end
end

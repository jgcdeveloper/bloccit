require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title: "New Ad Title", body: "New Ad Body", price: 11) }

  describe "attributes" do
    it "Has a title, body, and a price" do
      expect(advertisement).to have_attributes(title: "New Ad Title", body: "New Ad Body", price: 11)
    end
  end

end

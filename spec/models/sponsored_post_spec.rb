require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do

  #define lets for our test topic
  let(:name) { RandomData.random_sentence }
  let(:description) { RandomData.random_paragraph }

  #define lets for our test sponsored_post
  let(:title) { RandomData.random_sentence }
  let(:body) { RandomData.random_paragraph }
  let(:price) { RandomData.random_price }

  let(:topic) { Topic.create!(name: name, description: description) }
  let(:post) { topic.sponsored_posts.create!(title: title, body: body, price: price) }

  it { is_expected.to belong_to(:topic) }

  describe "attributes" do
    it "has title, body, & price attributes" do
      expect(post).to have_attributes(title: title, body: body, price: price)
    end
  end

end

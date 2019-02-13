require "rails_helper"

RSpec.describe "Visitor views review list", type: :system do
  it "lists all the reviews" do
    Review.create!(
      title: "first review",
      imageUrl: "http://example.com/image.png",
      restaurant: "a",
      body: "b",
      rating: "c",
    )
    visit root_path

    expect(page).to have_text("first review")
  end
end

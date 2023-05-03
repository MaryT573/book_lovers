require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        title: "Title",
        summary: "MyText",
        author: "Author",
        publish_date: "Publish Date",
        user: nil
      ),
      Book.create!(
        title: "Title",
        summary: "MyText",
        author: "Author",
        publish_date: "Publish Date",
        user: nil
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Author".to_s, count: 2
    assert_select "tr>td", text: "Publish Date".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end

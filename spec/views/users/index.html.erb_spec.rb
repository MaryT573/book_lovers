require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        name: "Name",
        age: 2,
        gender: "Gender",
        email: "Email"
      ),
      User.create!(
        name: "Name",
        age: 2,
        gender: "Gender",
        email: "Email"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Gender".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
  end
end

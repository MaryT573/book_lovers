require 'rails_helper'

RSpec.describe "connections/edit", type: :view do
  before(:each) do
    @connection = assign(:connection, Connection.create!())
  end

  it "renders the edit connection form" do
    render

    assert_select "form[action=?][method=?]", connection_path(@connection), "post" do
    end
  end
end

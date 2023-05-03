require 'rails_helper'

RSpec.describe "connections/index", type: :view do
  before(:each) do
    assign(:connections, [
      Connection.create!(),
      Connection.create!()
    ])
  end

  it "renders a list of connections" do
    render
  end
end

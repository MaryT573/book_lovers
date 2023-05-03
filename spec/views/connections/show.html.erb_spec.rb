require 'rails_helper'

RSpec.describe "connections/show", type: :view do
  before(:each) do
    @connection = assign(:connection, Connection.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

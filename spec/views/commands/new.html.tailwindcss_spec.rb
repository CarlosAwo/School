require 'rails_helper'

RSpec.describe "commands/new", type: :view do
  before(:each) do
    assign(:command, Command.new(
      customer: nil,
      product: nil,
      user: nil
    ))
  end

  it "renders new command form" do
    render

    assert_select "form[action=?][method=?]", commands_path, "post" do

      assert_select "input[name=?]", "command[customer_id]"

      assert_select "input[name=?]", "command[product_id]"

      assert_select "input[name=?]", "command[user_id]"
    end
  end
end

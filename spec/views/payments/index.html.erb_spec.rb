require 'rails_helper'

RSpec.describe "payments/index", type: :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        :vehicle => "Vehicle"
      ),
      Payment.create!(
        :vehicle => "Vehicle"
      )
    ])
  end

  it "renders a list of payments" do
    render
    assert_select "tr>td", :text => "Vehicle".to_s, :count => 2
  end
end

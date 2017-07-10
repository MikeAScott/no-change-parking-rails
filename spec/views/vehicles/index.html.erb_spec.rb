require 'rails_helper'

RSpec.describe "vehicles/index", type: :view do
  before(:each) do
    assign(:vehicles, [
      Vehicle.create!(
        :vrn => "Vrn"
      ),
      Vehicle.create!(
        :vrn => "Vrn"
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    assert_select "tr>td", :text => "Vrn".to_s, :count => 2
  end
end

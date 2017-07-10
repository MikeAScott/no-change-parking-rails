require 'rails_helper'

RSpec.describe "vehicles/show", type: :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :vrn => "Vrn"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Vrn/)
  end
end

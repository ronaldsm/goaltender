require 'rails_helper'

RSpec.describe "cores/show", type: :view do
  before(:each) do
    @core = assign(:core, Core.create!(
      :area => "Area",
      :persona => "Persona",
      :name => "Name",
      :short_description => "MyText",
      :details => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Area/)
    expect(rendered).to match(/Persona/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end

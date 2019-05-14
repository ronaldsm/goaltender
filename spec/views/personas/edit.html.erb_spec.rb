require 'rails_helper'

RSpec.describe "personas/edit", type: :view do
  before(:each) do
    @persona = assign(:persona, Persona.create!(
      :name => "MyString",
      :details => "MyText",
      :url => "MyText"
    ))
  end

  it "renders the edit persona form" do
    render

    assert_select "form[action=?][method=?]", persona_path(@persona), "post" do

      assert_select "input[name=?]", "persona[name]"

      assert_select "textarea[name=?]", "persona[details]"

      assert_select "textarea[name=?]", "persona[url]"
    end
  end
end

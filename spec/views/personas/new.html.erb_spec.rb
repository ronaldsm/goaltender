require 'rails_helper'

RSpec.describe "personas/new", type: :view do
  before(:each) do
    assign(:persona, Persona.new(
      :name => "MyString",
      :details => "MyText",
      :url => "MyText"
    ))
  end

  it "renders new persona form" do
    render

    assert_select "form[action=?][method=?]", personas_path, "post" do

      assert_select "input[name=?]", "persona[name]"

      assert_select "textarea[name=?]", "persona[details]"

      assert_select "textarea[name=?]", "persona[url]"
    end
  end
end

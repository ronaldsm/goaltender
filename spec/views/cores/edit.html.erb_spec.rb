require 'rails_helper'

RSpec.describe "cores/edit", type: :view do
  before(:each) do
    @core = assign(:core, Core.create!(
      :area => "MyString",
      :persona => "MyString",
      :name => "MyString",
      :short_description => "MyText",
      :details => "MyText"
    ))
  end

  it "renders the edit core form" do
    render

    assert_select "form[action=?][method=?]", core_path(@core), "post" do

      assert_select "input[name=?]", "core[area]"

      assert_select "input[name=?]", "core[persona]"

      assert_select "input[name=?]", "core[name]"

      assert_select "textarea[name=?]", "core[short_description]"

      assert_select "textarea[name=?]", "core[details]"
    end
  end
end

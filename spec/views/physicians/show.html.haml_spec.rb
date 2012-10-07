require 'spec_helper'

describe "physicians/show" do
  before(:each) do
    @physician = assign(:physician, stub_model(Physician,
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :phone => "Phone",
      :specialty => "MyText",
      :state => "State",
      :patients => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
    rendered.should match(/MyText/)
    rendered.should match(/State/)
    rendered.should match(//)
  end
end

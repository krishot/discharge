require 'spec_helper'

describe "action_programs/show" do
  before(:each) do
    @action_program = assign(:action_program, stub_model(ActionProgram,
      :name => "Name",
      :category => "Category",
      :description => "MyText",
      :state => "State",
      :type => "Type",
      :therapy_id => "Therapy",
      :condition => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Category/)
    rendered.should match(/MyText/)
    rendered.should match(/State/)
    rendered.should match(/Type/)
    rendered.should match(/Therapy/)
    rendered.should match(//)
  end
end

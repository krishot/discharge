require 'spec_helper'

describe "ActionTasks" do
  describe "GET /action_tasks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get action_tasks_path
      response.status.should be(200)
    end
  end
end

require "rails_helper"

describe CreatesProject do
  it "creates a project given a name" do
    # Arrange
    creator = CreatesProject.new(name: "Project Runway")
    creator.build
    
    # Assert
    expect(creator.project.name).to eq("Project Runway")
  end
end

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


describe "task string parsing" do
  # Arrange
  let(:creator) { CreatesProject.new(name: "Test", task_string: task_string) }
  let(:tasks) { creator.convert_string_to_tasks }

  describe "with an empty string" do
    # Arrange
    let(:task_string) { "" }
    # Assert
    specify { expect(tasks.size).to eq(0) }
  end

  describe "with a single string" do
    # Arrange
    let(:task_string) { "Start things" }
    # Assert
    specify { expect(tasks.size).to eq(1) }
    specify { expect(tasks.map(&:title)).to eq(["Start things"]) }
    specify { expect(tasks.map(&:size)).to eq([1]) }
  end

  describe "with a single string with size" do
    # Arrange
    let(:task_string) { "Start things:3" }
    # Assert
    specify { expect(tasks.size).to eq(1) }
    specify { expect(tasks.map(&:title)).to eq(["Start things"]) }
    specify { expect(tasks.map(&:size)).to eq([3]) }
  end

  describe "with multiple tasks" do
    # Arrange
    let(:task_string) { "Start things:3\nEnd things:2" }
    # Assert
    specify { expect(tasks.size).to eq(2) }
    specify { expect(tasks.map(&:title)).to eq(["Start things", "End things"]) }
    specify { expect(tasks.map(&:size)).to eq([3, 2]) }
  end

  describe "attaching tasks to the project" do
    # Arrange
    let(:task_string) { "Start things:3\nEnd things:2" }
    it "saves the project and tasks" do
      # Act
      creator.create
      # Assert
      expect(creator.project.tasks.size).to eq(2)
      expect(creator.project).not_to be_a_new_record
    end
  end

end

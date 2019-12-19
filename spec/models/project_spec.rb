require 'rails_helper'

RSpec.describe Project do
  it "considers a project with no tasks to be done" do
    # Arrange
    project = Project.new
    # Assert
    expect(project.done?).to be_truthy
  end

  it "knows that a project with an incomplete task is not done" do
    # Arrange; Given
    project = Project.new
    task = Task.new
    # Act; When
    project.tasks << task
    # Assert; Then
    expect(project.done?).to be_falsy
  end
end
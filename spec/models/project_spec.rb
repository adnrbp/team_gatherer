require 'rails_helper'

RSpec.describe Project do
  describe "initialization" do
    # Arrange; Given
    let(:project) { Project.new }
    let(:task) { Task.new }

    it "considers a project with no tasks to be done" do
      # Assert
      expect(project.done?).to be_truthy
    end

    it "knows that a project with an incomplete task is not done" do
      # Act; When
      project.tasks << task
      # Assert; Then
      expect(project.done?).to be_falsy
    end
  end
end
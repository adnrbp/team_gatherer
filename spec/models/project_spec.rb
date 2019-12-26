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

    it "marks a project done if its tasks are done" do
      # Act; When
      project.tasks << task
      task.mark_completed
      # Assert; Then
      expect(project).to be_done
    end
  end
  describe "estimates" do
    # Arrange; Given
    let(:project) {Project.new}
    let(:done) {Task.new(size: 2, completed: true)}
    let(:small_not_done) {Task.new(size:1)}
    let(:large_not_done) { Task.new(size: 4) }
    # Act; When
    before(:example) do
      project.tasks = [done, small_not_done, large_not_done]
    end
    it "can calculate total size" do
      expect(project.total_size).to eq(7)
    end
    it "can calculate remaining size" do
      expect(project.remaining_size).to eq(5)
    end
  end
end
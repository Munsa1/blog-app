require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User model' do
    subject { User.new(name: 'TestUser', bio: "simple bio", posts_counter: 0) }
    before { subject.save }

    it 'User should be valid' do
      expect(subject).to be_valid
    end

    it 'User should be valid' do
      expect(subject.bio).to eq("simple bio")
    end

    it 'Name should be present' do
      subject.name = "Testuser"
      expect(subject.name).to eq("Testuser")
    end

    it 'Posts_counter should be more or equal to 0' do
      subject.posts_counter = -1
      expect(subject.posts_counter).to eq(-1)
    end
  end
end

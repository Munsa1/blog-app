require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Post model' do
    before(:all) do
      user = User.new(name: 'TestUser', posts_counter: 0)
      user.save
    end

    subject { Post.new(title: 'Title', text: 'text test', comments_counter: 1, likes_counter: 0, user_id: 1) }
    before { subject.save }

    it 'Comments_counter should be integer' do
      expect(subject).to be_valid
    end

    it 'Title should be present' do
      expect(subject.title).to eq("Title")
    end

    it 'Text should be nil' do
      subject.text = nil
      expect(subject.text).to be_nil
    end

    it 'Text should be present' do
      expect(subject.text).to eq("text test")
    end

    it 'Title should be nil' do
      subject.title = nil
      expect(subject.title).to be_nil
    end

    it 'Title should be present' do
      subject.title = nil
      expect(subject.title).to be_nil
    end

    it 'Comments_counter should be nil' do
      subject.comments_counter = nil
      expect(subject.comments_counter).to be_nil
    end

    it 'Comments_counter should be present' do
      expect(subject.comments_counter).to eq(1)
    end

    it 'Likes_counter should be present' do
      expect(subject.likes_counter).to eq(0)
    end

    it 'Likes_counter should be nil' do
      subject.likes_counter = nil
      expect(subject.likes_counter).to be_nil
    end
  end
end

require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'like model' do
    before(:all) do
      user = User.new(name: 'TestUser', posts_counter: 0)
      post = Post.new(title: 'Title', text: 'text test', likes_counter: 1, user_id: 1)
      user.save
      post.save
    end

    subject { Like.new(user: User.find(1), post: Post.first) }
    before { subject.save }

    it 'likes_counter should be valid' do
      expect(subject).to be_valid
    end
  end
end

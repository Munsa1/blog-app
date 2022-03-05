class Like < ActiveRecord::Base
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  belongs_to :user, class_name: 'User', foreign_key: :user_id
  belongs_to :post

  after_save :update_likes_counter

  def update_likes_counter
    post.increment!(:likes_counter)
  end
end

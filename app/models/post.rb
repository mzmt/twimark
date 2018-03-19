class Post < ApplicationRecord
  validates :tweet_url, {presence: true, length:{maximum:10000}}
  validates :user_id, {presence: true}

  def user
    return User.find_by(id: self.user_id)
  end
end

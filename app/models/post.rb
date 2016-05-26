class Post < ActiveRecord::Base
  has_many :comments

  after_create :spamify

  def spamify
    if self.id == 1 || self.id % 5 == 0
      update(title: "I've been SPAMified!")
    end
  end
end

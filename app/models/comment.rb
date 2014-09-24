class Comment < ActiveRecord::Base
  belongs_to :user
  validates :body, presence: true, length: {maximum: 2000}

  class << self
    def remove_excessive!
      if all.count > 100
        first(al.count - 50).delete_all
      end
    end
  end
end

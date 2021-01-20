class Post < ActiveRecord::Base
    belongs_to :author
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(fiction nonfiction),
    message: "%{value} is not a valid category" }
end

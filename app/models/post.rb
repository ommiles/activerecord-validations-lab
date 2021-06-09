class Post < ActiveRecord::Base
# have a title -- presence
# content is >= 250 chars -- length
# summary <= 250 chars -- length
# category either fact or fiction

    include ActiveModel::Validations
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} is not a valid category." }
    validates_with PostValidator
end

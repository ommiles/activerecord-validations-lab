class Author < ActiveRecord::Base
# have a name -- presence
# no same names -- uniqueness
# phone number -- length

    validates :name, presence: true, uniqueness: true
    validates :phone_number, length: { is: 10 }
end

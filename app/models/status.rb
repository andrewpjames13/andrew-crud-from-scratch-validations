class Status < ActiveRecord::Base
  validates :user, presence: true, uniqueness: true, allow_blank: false
  validates :status, presence: true

end

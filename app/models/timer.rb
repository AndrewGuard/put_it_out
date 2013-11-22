class Timer < ActiveRecord::Base
  attr_accessible :updated_at

  belongs_to :user
end

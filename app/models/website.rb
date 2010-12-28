class Website < ActiveRecord::Base
  has_many :group_websites
  has_many :groups,:through => :group_websites
end

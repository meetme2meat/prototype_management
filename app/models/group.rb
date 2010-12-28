class Group < ActiveRecord::Base
  has_many :group_users
  has_many :group_websites
  has_many :users ,:through => :group_users
  has_many :websites,:through => :group_websites
end

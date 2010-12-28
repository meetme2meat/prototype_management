class GroupWebsite < ActiveRecord::Base
  belongs_to :group
  belongs_to :website
end

class Notice < ActiveRecord::Base
  include ApplicationHelper
  belongs_to :user
  attr_accessible :content, :title
end

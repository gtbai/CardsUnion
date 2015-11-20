class AddNoticeImageToNotices < ActiveRecord::Migration
  def change
    add_column :notices, :notice_image, :string
  end
end

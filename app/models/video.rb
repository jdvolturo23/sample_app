# == Schema Information
#
# Table name: videos
#
#  id           :integer          not null, primary key
#  link         :text(255)
#  title        :text(255)
#  published_at :datetime
#  duration     :text(255)
#  likes        :integer
#  dislikes     :integer
#  uid          :text(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Video < ActiveRecord::Base
  YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i

  validates :link, presence: true, format: YT_LINK_FORMAT
end
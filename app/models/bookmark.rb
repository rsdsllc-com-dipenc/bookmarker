# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  url        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Bookmark < ApplicationRecord
  validates :title, presence: true, allow_blank: false
  validates :url, presence: true, allow_blank: false
end

# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  user_id     :integer
#  description :string(255)
#  venue       :string(255)
#  start_date  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  end_date    :datetime
#

class Event < ActiveRecord::Base
  attr_accessible :start_date, :end_date, :description, :title, :venue
  belongs_to :user

  validates :user_id, presence: true
  validates :title, presence: true
  validates :venue, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true


  default_scope order: 'events.start_date DESC'
end

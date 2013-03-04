class Event < ActiveRecord::Base
  attr_accessible :start_date, :end_date, :description, :title, :venue
  belongs_to :user

  validates :user_id, presence: true
  validates :title, presence: true
  validates :venue, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true


  default_scope order: 'events.created_at DESC'
end

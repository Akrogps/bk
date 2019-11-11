class Event < ApplicationRecord
  EVENT_STATES = ["upcoming", "happened"]

  include Imageable

  validates :title, presence: true
  validates :content, presence: true
  validates :event_date, presence: true
  validates :address, presence: true
  validates :state, inclusion: { in: EVENT_STATES }, presence: true
end

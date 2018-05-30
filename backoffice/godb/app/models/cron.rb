class Cron < ApplicationRecord
  belongs_to :task
  belongs_to :user
  validates :every, presence: true, datestring: true
  validates :parameter, presence: true, json: true
end

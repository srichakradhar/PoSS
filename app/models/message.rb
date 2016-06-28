class Message < ActiveRecord::Base
  validates :content, length: { maximum: 140 }, presence: true
  validates :name,presence: true
end

class Event < ApplicationRecord
    validates :event_name, presence: {message: "can't be empty"}
    validates :event_date, presence: {message: "can't be empty"}
    validates :event_start_time, presence: {message: "can't be empty"}
    validates :event_end_time, presence: {message: "can't be empty"}
    validates :location, presence: {message: "can't be empty"}
    validates :description, presence: {message: "can't be empty"}
    validates :address, presence: {message: "can't be empty"}
    validates :city, presence: {message: "can't be empty"}
    validates :phone_number, presence: {message: "can't be empty"}
    validates :zip, presence: {message: "can't be empty"}
    validates :image, presence: {message: "can't be empty"}
end

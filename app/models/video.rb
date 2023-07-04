class Video < ApplicationRecord


    validates :name, presence: {message: "can't be empty"}
    validates :link_to_video, presence: {message: "can't be empty"}
    validates :date_created, presence: {message: "can't be empty"}

end

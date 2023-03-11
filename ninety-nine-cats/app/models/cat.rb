# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'action_view'

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    validates :birth_date, :color, :name, :sex, presence: true 
    validates :color, inclusion: { in: %w(brown black white orange), 
    message: "%{value} is not a valid color" }
    validates :sex, inclusion: { in: %w(m f M F), 
    message: "%{value} is not a valid sex" }
    validate :birth_date_cannot_be_future

    def birth_date_cannot_be_future
        if birth_date.present? && birth_date > Date.today
            errors.add(:birth_date, "can't be in the future")
        end
    end

    def age 
        time_ago_in_words(birth_date)
    end

end

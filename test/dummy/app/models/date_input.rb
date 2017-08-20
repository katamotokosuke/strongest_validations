class DateInput < ApplicationRecord
  validates :date, string_date: true
end

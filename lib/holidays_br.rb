# frozen_string_literal: true

require_relative "holidays_br/version"
require 'json'

module HolidaysBr
  extend self

  def is_holiday(state, city, date)
    load_holidays(state)

    return false unless @holidays.key?(city) && @holidays[city].key?(date)

    holiday_info = @holidays[city][date]
    {
      name: holiday_info['name'],
      type: holiday_info['type']
    }
  end

  private

  def load_holidays(state)
    file_path = File.join(File.dirname(__FILE__), '..', 'holidays', "#{state}.json")
    @holidays = JSON.parse(File.read(file_path))
  end
end

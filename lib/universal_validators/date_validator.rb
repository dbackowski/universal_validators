require 'date'

module UniversalValidators
  class DateValidator
    def initialize(date)
      @date = date.to_s
    end

    def valid?
      Date.parse(@date).is_a?(Date) rescue false
    end
  end
end

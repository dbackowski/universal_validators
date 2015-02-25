require 'date'

module UniversalValidators
  class DateTimeValidator
    def initialize(datetime)
      @datetime = datetime.to_s
    end

    def valid?
      DateTime.parse(@datetime).is_a?(DateTime) rescue false
    end
  end
end

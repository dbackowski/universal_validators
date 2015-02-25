require 'spec_helper'

describe UniversalValidators::DateTimeValidator do
  describe '.valid?' do
    context 'with valid date time' do
      it "return true" do
        date_time = UniversalValidators::DateTimeValidator.new('2015-02-25 12:33')
        expect(date_time).to be_valid
      end
    end

    context 'with invalid date time' do
      it "return false" do
        date_time = UniversalValidators::DateTimeValidator.new('2015-02-25 12:133')
        expect(date_time).to_not be_valid
      end
    end
  end
end
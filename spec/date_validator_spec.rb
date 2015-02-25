require 'spec_helper'

describe UniversalValidators::DateValidator do
  describe '.valid?' do
    context 'with valid date' do
      it "return true" do
        date = UniversalValidators::DateValidator.new('2015-02-25')
        expect(date).to be_valid
      end
    end

    context 'with invalid date' do
      it "return false" do
        date = UniversalValidators::DateValidator.new('2015-02-29')
        expect(date).to_not be_valid
      end
    end
  end
end
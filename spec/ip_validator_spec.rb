require 'spec_helper'

describe UniversalValidators::IpValidator do
  describe '.valid?' do
    context 'with valid ip address' do
      it "return true" do
        ip = UniversalValidators::IpValidator.new('127.0.0.1')
        expect(ip).to be_valid

        ip = UniversalValidators::IpValidator.new('127.0.0.1/32', true)
        expect(ip).to be_valid
      end
    end

    context 'with invalid ip address' do
      it "return false" do
        ip = UniversalValidators::IpValidator.new('256.0.0.1')
        expect(ip).to_not be_valid

        ip = UniversalValidators::IpValidator.new('127.0.0.1', true)
        expect(ip).to_not be_valid

        ip = UniversalValidators::IpValidator.new('127.0.0.1/33', true)
        expect(ip).to_not be_valid
      end
    end
  end
end
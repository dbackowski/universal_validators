require 'spec_helper'

describe UniversalValidators::MacAddressValidator do
  describe '.valid?' do
    context 'with valid mac address' do
      it "return true" do
        mac = UniversalValidators::MacAddressValidator.new('00:0A:CD:00:CC:FE')
        expect(mac).to be_valid
      end
    end

    context 'with invalid mac address' do
      it "return false" do
        mac = UniversalValidators::MacAddressValidator.new('00:0A:CD:00:CC:FG')
        expect(mac).to_not be_valid
      end
    end
  end
end
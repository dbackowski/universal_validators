module UniversalValidators
  class MacAddressValidator
    def initialize(mac_address)
      @mac_address = mac_address.to_s
    end

    def valid?
      mac_address = @mac_address.scan(/[0-9a-f]+/i).join

      return if mac_address.length != 12

      mac_address.scan(/.{2}/).select { |pair| pair.to_i(16) > 255 }.length == 0
    end
  end
end

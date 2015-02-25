module UniversalValidators
  class IpValidator
    def initialize(ip, mask_presence = false)
      @ip = ip.to_s
      @mask_presence = mask_presence
    end

    def valid?
      begin
        check_format_with_netmask if @mask_presence
        check_format_without_netmask unless @mask_presence
      rescue
        return
      end

      @ip.split('.').select { |pair| pair.to_i > 255 }.length == 0
    end

    private

    def check_format_without_netmask
      fail ArgumentError unless @ip.match(/\A[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\Z/)
    end

    def check_format_with_netmask
      fail ArgumentError unless @ip.match(/\A[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\/[0-9]{1,2}\Z/)
      fail ArgumentError if @ip.split('/')[1].to_i > 32
    end
  end
end

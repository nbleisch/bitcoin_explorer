class BitcoinDeService
  include HTTParty
  base_uri 'https://bitcoinapi.de/v1/'

  def self.getRate(api_key)
    rateRsp = self.class.get("#{api_key}/rate.json")
  end

end
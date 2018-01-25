class BlockChainInfoService
  include HTTParty
  base_uri 'https://blockchain.info/de/ticker'

  def self.getRate()
    rateRsp = get("/").parsed_response['EUR']['last']
    rateRsp
  end

end
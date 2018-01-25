require 'blockchain_info_service'

class IndexController < ApplicationController

  def index
    @rate = BlockChainInfoService.getRate()
  end

end

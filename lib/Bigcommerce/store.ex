defmodule Bigcommerce.Client.Store do
  alias Bigcommerce.Client.Helpers
  alias Bigcommerce.Client.Requester

  def get_store_info(conf) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/store"), conf[:username], conf[:key], [], ctype, body)
  end

end
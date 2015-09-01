defmodule Bigcommerce.Client.System do
  alias Bigcommerce.Client.Helpers
  alias Bigcommerce.Client.Requester

  def get_time(conf) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/time"), conf[:username], conf[:key], [], ctype, body)
  end

end
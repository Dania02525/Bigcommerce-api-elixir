defmodule Bigcommerce.Client.Shipping do
  alias Bigcommerce.Client.Helpers
  alias Bigcommerce.Client.Requester

  def get_shipping_methods(conf, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/shipping/methods?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_shipping_method(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/shipping/methods/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

end
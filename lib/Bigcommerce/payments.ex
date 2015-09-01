defmodule Bigcommerce.Client.Payment do
  alias Bigcommerce.Client.Helpers
  alias Bigcommerce.Client.Requester

  def get_payment_methods(conf, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/payments/methods?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

end
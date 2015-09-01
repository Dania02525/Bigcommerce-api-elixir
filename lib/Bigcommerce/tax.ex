defmodule Bigcommerce.Client.Tax do
  alias Bigcommerce.Client.Helpers
  alias Bigcommerce.Client.Requester

  def get_tax_classes(conf, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/tax_classes?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_tax_class(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/tax_classes/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

end
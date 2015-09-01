defmodule Bigcommerce.Client.Geography do
  alias Bigcommerce.Client.Helpers
  alias Bigcommerce.Client.Requester

  def get_countries(conf, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/countries?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_country(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/countries/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def count_countries(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/countries/count"), conf[:username], conf[:key], [], ctype, body)
  end

end
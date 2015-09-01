defmodule Bigcommerce.Client.Customer do
  alias Bigcommerce.Client.Helpers
  alias Bigcommerce.Client.Requester

  def get_customers(conf, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/customers?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_customer(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/customers/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_customer(conf, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/customers"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_customer(conf, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/customers/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_customer(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/customers/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many

  def count_customers(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/customers/count"), conf[:username], conf[:key], [], ctype, body)
  end

  #address related functions

  def get_customer_addresses(conf, customer_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/customers/" <> customer_id <> "/addresses?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_customer_address(conf, customer_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/customers/" <> customer_id <> "/addresses/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_customer_address(conf, customer_id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/customers/" <> customer_id <> "/addresses"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_customer_address(conf, customer_id, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/customers/" <> customer_id <> "/addresses/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_customer_address(conf, customer_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/customers/" <> customer_id <> "/addresses/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many

  def count_customer_addresses(conf, customer_id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/customers/" <> customer_id <> "/addresses/count"), conf[:username], conf[:key], [], ctype, body)
  end

end
defmodule Bigcommerce.Client.Marketing do
  alias Bigcommerce.Client.Helpers
  alias Bigcommerce.Client.Requester

  def get_coupons(conf, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/coupons?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_coupon(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/coupons/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_coupon(conf, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/coupons"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_coupon(conf, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/coupons/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_coupon(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/coupon/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many

  def count_coupons(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/coupons/count"), conf[:username], conf[:key], [], ctype, body)
  end

end
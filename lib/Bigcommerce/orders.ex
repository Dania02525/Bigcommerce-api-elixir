defmodule Bigcommerce.Client.Order do
  alias Bigcommerce.Client.Helpers
  alias Bigcommerce.Client.Requester

  def get_orders(conf, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_order(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_order(conf, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/orders"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_order(conf, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/orders/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_order(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/orders/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  def count_orders(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders/count"), conf[:username], conf[:key], [], ctype, body)
  end

  #order coupon functions

  def get_order_coupons(conf, order_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders" <> order_id <> "/coupons?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_order_coupon(conf, order_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders/" <> order_id <> "/coupons/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #order message functions

  def get_order_messages(conf, order_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders" <> order_id <> "/messages?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_order_message(conf, order_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders/" <> order_id <> "/messages/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #order product functions

  def get_order_products(conf, order_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders" <> order_id <> "/products?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_order_product(conf, order_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders/" <> order_id <> "/products/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def count_order_products(conf, order_id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders/" <> order_id <> "/products/count"), conf[:username], conf[:key], [], ctype, body)
  end

  #shipping address functions

  def get_order_shipping_addresses(conf, order_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders" <> order_id <> "/shipping_addresses?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_order_shipping_address(conf, order_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders/" <> order_id <> "/shipping_addresses/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def count_order_shipping_addresses(conf, order_id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders/" <> order_id <> "/shipping_addresses/count"), conf[:username], conf[:key], [], ctype, body)
  end

  #order status functions

  def get_order_statuses(conf, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/order_statuses?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_order_status(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/order_statuses/" <> id), conf[:username], conf[:key], [], ctype, body)
  end 

  #order tax functions

   def get_order_taxes(conf, order_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders" <> order_id <> "/taxes?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_order_tax(conf, order_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders/" <> order_id <> "/taxes/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #order shipment functions

  def get_order_shipments(conf, order_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders/" <> order_id <> "/shipments?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_order_shipment(conf, order_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders/" <> order_id <> "/shipments/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_order_shipment(conf, order_id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/orders/" <> order_id <> "/shipments"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_order_shipment(conf, order_id, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/orders/" <> order_id <> "/shipments/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_order_shipment(conf, order_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/orders/" <> order_id <> "/shipments/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  def count_order_shipments(conf, order_id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/orders/" <> order_id <> "/shipments/count"), conf[:username], conf[:key], [], ctype, body)
  end

end
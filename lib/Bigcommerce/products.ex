defmodule Bigcommerce.Client.Product do
  alias Bigcommerce.Client.Helpers
  alias Bigcommerce.Client.Requester

  #product functions

  def get_products(conf, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_product(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_product(conf, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/products"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_product(conf, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/products/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_product(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/products/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  def count_products(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/count"), conf[:username], conf[:key], [], ctype, body)
  end

  #product skus functions

  def get_product_skus(conf, product_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/skus?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_product_sku(conf, product_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/skus/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_product_sku(conf, product_id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/skus"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_product_sku(conf, product_id, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/skus/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_product_sku(conf, product_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/skus/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  def count_all_product_skus(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/skus/count"), conf[:username], conf[:key], [], ctype, body)
  end

  #product videos functions

  def get_product_videos(conf, product_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/videos?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_product_video(conf, product_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/videos/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_product_video(conf, product_id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/videos"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_product_video(conf, product_id, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/videos/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_product_video(conf, product_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/videos/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  def count_all_product_videos(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/videos/count"), conf[:username], conf[:key], [], ctype, body)
  end

  #product rules functions

  def get_product_rules(conf, product_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/rules?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_product_rule(conf, product_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/rules/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_product_rule(conf, product_id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/rules"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_product_rule(conf, product_id, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/rules/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_product_rule(conf, product_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/rules/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  def count_all_product_rules(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/rules/count"), conf[:username], conf[:key], [], ctype, body)
  end

  #product reviews functions

  def get_product_reviews(conf, product_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/reviews?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  #product options functions

  def get_product_options(conf, product_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/options?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_product_option(conf, product_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/options/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #product image functions

  def get_product_images(conf, product_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/images?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_product_image(conf, product_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/images/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_product_image(conf, product_id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/images"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_product_image(conf, product_id, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/images/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_product_image(conf, product_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/images/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  def count_all_product_images(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/images/count"), conf[:username], conf[:key], [], ctype, body)
  end

  #product option value functions

  def get_option_values(conf, option_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/options/" <> option_id <> "/values?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_option_value(conf, option_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/options/" <> option_id <> "/values/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_option_value(conf, option_id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/options/" <> option_id <> "/values"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_option_value(conf, option_id, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/options/" <> option_id <> "/values/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_option_value(conf, option_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/options/" <> option_id <> "/values/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #product option set options functions

  def get_option_set_options(conf, option_set_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/option_sets/" <> option_set_id <> "/options?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_option_set_option(conf, option_set_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/option_sets/" <> option_set_id <> "/options/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_option_set_option(conf, option_set_id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/option_sets/" <> option_set_id <> "/options"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_option_set_option(conf, option_set_id, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/option_sets/" <> option_set_id <> "/options/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_option_set_option(conf, option_set_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/option_sets/" <> option_set_id <> "/options/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  #product option set functions

  def get_option_sets(conf, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/option_sets?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_option_set(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/option_sets/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_option_set(conf, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/option_sets"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_option_set(conf, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/option_sets/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_option_set(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/option_sets/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  def count_option_sets(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/option_sets/count"), conf[:username], conf[:key], [], ctype, body)
  end

  #product options functions

  def get_options(conf, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/options?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_option(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/options/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_option(conf, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/options"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_option(conf, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/options/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_option(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/options/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  def count_options(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/options/count"), conf[:username], conf[:key], [], ctype, body)
  end

  #google product search mappings functions

  def get_google_product_search_map(conf, product_id) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/googleproductsearch"), conf[:username], conf[:key], [], ctype, body)
  end

  #custom fields functions

  def get_product_custom_fields(conf, product_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/custom_fields?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_product_custom_field(conf, product_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/custom_fields/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_product_custom_field(conf, product_id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/custom_fields"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_product_custom_field(conf, product_id, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/custom_fields/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_product_custom_field(conf, product_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/custom_fields/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  def count_all_product_custom_fields(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/custom_fields/count"), conf[:username], conf[:key], [], ctype, body)
  end

  #configurable fields functions

  def get_product_configurable_fields(conf, product_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/configurable_fields?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_product_configurable_field(conf, product_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/configurable_fields/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_product_configurable_field(conf, product_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/configurable_fields/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  def count_all_product_configurable_fields(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/configurable_fields/count"), conf[:username], conf[:key], [], ctype, body)
  end

  #category functions

  def get_categories(conf, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/categories?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_category(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/categories/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_category(conf, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/categories"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_category(conf, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/categories/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_category(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/categories/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  def count_categories(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/categories/count"), conf[:username], conf[:key], [], ctype, body)
  end

  #discount rule functions

  def get_product_discount_rules(conf, product_id, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/discount_rules?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_product_discount_rule(conf, product_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/discount_rules/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_product_discount_rule(conf, product_id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/discount_rules"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_product_discount_rule(conf, product_id, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/discount_rules/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_product_discount_rule(conf, product_id, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/products/" <> product_id <> "/discount_rules/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  def count_all_product_discount_rules(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/products/discount_rules/count"), conf[:username], conf[:key], [], ctype, body)
  end

  #brand functions

  def get_brands(conf, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/brands?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_brand(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/brands/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_brand(conf, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/brands"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_brand(conf, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/brands/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_brand(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/brands/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  def count_brands(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/brands/count"), conf[:username], conf[:key], [], ctype, body)
  end

end
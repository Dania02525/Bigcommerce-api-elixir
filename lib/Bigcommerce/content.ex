defmodule Bigcommerce.Client.Content do
  alias Bigcommerce.Client.Helpers
  alias Bigcommerce.Client.Requester

  def get_blog_posts(conf, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/blog/posts?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

  def get_blog_post(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/blog/posts/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def create_blog_post(conf, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/blog/posts"), conf[:username], conf[:key], [], ctype, body)
  end

  def update_blog_post(conf, id, params) do
    body = Helpers.encode(params)
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:put, Helpers.url(conf[:endpoint], "/blog/posts/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  def delete_blog_post(conf, id) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:delete, Helpers.url(conf[:endpoint], "/blog/posts/" <> id), conf[:username], conf[:key], [], ctype, body)
  end

  #no delete many 

  def count_blog_posts(conf) do
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:get, Helpers.url(conf[:endpoint], "/blog/posts/count"), conf[:username], conf[:key], [], ctype, body)
  end

end
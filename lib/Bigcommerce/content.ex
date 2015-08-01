defmodule Bigcommerce.Client.Content do
  alias Bigcommerce.Client.Helpers
  alias Bigcommerce.Client.Requester

  def get_blog_posts(conf, params) do  
    body = []
    ctype = 'application/x-www-form-urlencoded'

    Requester.request(:post, Helpers.url(conf[:endpoint], "/blog/posts?" <> URI.encode_query(params)), conf[:username], conf[:key], [], ctype, body)
  end

end
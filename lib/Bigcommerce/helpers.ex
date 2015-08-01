defmodule Bigcommerce.Client.Helpers do

  def url(domain, path), do: Path.join([domain, path])

end
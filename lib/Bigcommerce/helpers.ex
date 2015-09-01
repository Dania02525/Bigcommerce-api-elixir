defmodule Bigcommerce.Client.Helpers do

  def encode(map) do
    Poison.encode!(map)
  end

  def url(domain, path), do: Path.join([domain, path])

end
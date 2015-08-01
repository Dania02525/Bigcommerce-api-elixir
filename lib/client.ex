defmodule Bigcommerce.Client do

  defmacro __using__(config) do
    quote do
      def conf, do: unquote(config)
      def get_blog_posts(params) do
        unquote(Bigcommerce.Client.Content).get_blog_posts(conf(), params)
      end
    end
  end
end


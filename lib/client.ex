defmodule Bigcommerce.Client do

  defmacro __using__(config) do
    quote do
      def conf, do: unquote(config)
      def get_blog_posts(params) do
        unquote(Bigcommerce.Client.Content).get_blog_posts(conf(), params)
      end
      def get_blog_post(id) do
        unquote(Bigcommerce.Client.Content).get_blog_post(conf(), id)
      end
      def create_blog_post(params) do
        unquote(Bigcommerce.Client.Content).create_blog_post(conf(), params)
      end
      def update_blog_post(id, params) do
        unquote(Bigcommerce.Client.Content).update_blog_post(conf(), id, params)
      end
      def delete_blog_post(id) do
        unquote(Bigcommerce.Client.Content).delete_blog_post(conf(), id)
      end
      def count_blog_posts do
        unquote(Bigcommerce.Client.Content).count_blog_posts(conf())
      end
      def get_customers(params) do
        unquote(Bigcommerce.Client.Customer).get_customers(conf(), params)
      end
      def get_customer(id) do
        unquote(Bigcommerce.Client.Customer).get_customer(conf(), id)
      end
      def create_customer(params) do
        unquote(Bigcommerce.Client.Customer).create_customer(conf(), params)
      end
      def update_customer(id, params) do
        unquote(Bigcommerce.Client.Customer).update_customer(conf(), id, params)
      end
      def delete_customer(id) do
        unquote(Bigcommerce.Client.Customer).delete_customer(conf(), id)
      end
      def count_customers do
        unquote(Bigcommerce.Client.Customer).count_customers(conf())
      end
      def get_customer_addresses(customer_id, params) do
        unquote(Bigcommerce.Client.Customer).get_customer_addresses(conf(), customer_id, params)
      end
      def get_customer_address(customer_id, id) do
        unquote(Bigcommerce.Client.Customer).get_customer_address(conf(), customer_id, id)
      end
      def create_customer_address(customer_id, params) do
        unquote(Bigcommerce.Client.Customer).create_customer_address(conf(), customer_id, params)
      end
      def update_customer_address(customer_id, id, params) do
        unquote(Bigcommerce.Client.Customer).update_customer_address(conf(), customer_id, id, params)
      end
      def delete_customer_address(customer_id, id) do
        unquote(Bigcommerce.Client.Customer).delete_customer_address(conf(), customer_id, id)
      end
      def count_customer_addresses(customer_id) do
        unquote(Bigcommerce.Client.Customer).count_customer_addresses(conf(), customer_id)
      end
      def get_countries(params) do
        unquote(Bigcommerce.Client.Geography).get_countries(conf(), params)
      end
      def get_country(id) do
        unquote(Bigcommerce.Client.Geography).get_country(conf(), id)
      end
      def count_countries do
        unquote(Bigcommerce.Client.Geography).count_countries(conf())
      end
      def get_coupons(params) do
        unquote(Bigcommerce.Client.Marketing).get_coupons(conf(), params)
      end
      def get_coupon(id) do
        unquote(Bigcommerce.Client.Marketing).get_coupon(conf(), id)
      end
      def create_coupon(params) do
        unquote(Bigcommerce.Client.Marketing).create_coupon(conf(), params)
      end
      def update_coupon(id, params) do
        unquote(Bigcommerce.Client.Marketing).update_coupon(conf(), id, params)
      end
      def delete_coupon(id) do
        unquote(Bigcommerce.Client.Marketing).delete_coupon(conf(), id)
      end
      def count_coupons do
        unquote(Bigcommerce.Client.Marketing).count_coupons(conf())
      end
      def get_orders(params) do
        unquote(Bigcommerce.Client.Order).get_orders(conf(), params)
      end
      def get_order(id) do
        unquote(Bigcommerce.Client.Order).get_order(conf(), id)
      end
      def create_order(params) do
        unquote(Bigcommerce.Client.Order).create_order(conf(), params)
      end
      def update_order(id, params) do
        unquote(Bigcommerce.Client.Order).update_order(conf(), id, params)
      end
      def delete_order(id) do
        unquote(Bigcommerce.Client.Order).delete_order(conf(), id)
      end
      def count_orders do
        unquote(Bigcommerce.Client.Order).count_orders(conf())
      end
      def get_order_coupons(order_id, params) do
        unquote(Bigcommerce.Client.Order).get_order_coupons(conf(), order_id, params)
      end
      def get_order_coupon(order_id, id) do
        unquote(Bigcommerce.Client.Order).get_order_coupon(conf(), order_id, id)
      end
      def get_order_messages(order_id, params) do
        unquote(Bigcommerce.Client.Order).get_order_messages(conf(), order_id, params)
      end
      def get_order_message(order_id, id) do
        unquote(Bigcommerce.Client.Order).get_order_message(conf(), order_id, id)
      end
      def get_order_products(order_id, params) do
        unquote(Bigcommerce.Client.Order).get_order_products(conf(), order_id, params)
      end
      def get_order_product(order_id, id) do
        unquote(Bigcommerce.Client.Order).get_order_product(conf(), order_id, id)
      end
      def count_order_products(order_id) do
        unquote(Bigcommerce.Client.Order).count_order_products(conf(), order_id)
      end
      def get_order_shipping_addresses(order_id, params) do
        unquote(Bigcommerce.Client.Order).get_order_shipping_addresses(conf(), order_id, params)
      end
      def get_order_shipping_address(order_id, id) do
        unquote(Bigcommerce.Client.Order).get_order_shipping_address(conf(), order_id, id)
      end
      def count_order_shipping_addresses(order_id) do
        unquote(Bigcommerce.Client.Order).count_order_shipping_addresses(conf(), order_id)
      end
      def get_order_statuses(params) do
        unquote(Bigcommerce.Client.Order).get_order_statuses(conf(), params)
      end
      def get_order_status(id) do
        unquote(Bigcommerce.Client.Order).get_order_status(conf(), id)
      end
      def get_order_taxes(order_id, params) do
        unquote(Bigcommerce.Client.Order).get_order_taxes(conf(), order_id, params)
      end
      def get_order_tax(order_id, id) do
        unquote(Bigcommerce.Client.Order).get_order_tax(conf(), order_id, id)
      end
      def get_order_shipments(order_id, params) do
        unquote(Bigcommerce.Client.Order).get_order_shipments(conf(), order_id, params)
      end
      def get_order_shipment(order_id, id) do
        unquote(Bigcommerce.Client.Order).get_order(conf(), order_id, id)
      end
      def create_order_shipment(order_id, params) do
        unquote(Bigcommerce.Client.Order).create_order_shipment(conf(), order_id, params)
      end
      def update_order_shipment(order_id, id, params) do
        unquote(Bigcommerce.Client.Order).update_order_shipment(conf(), order_id, id, params)
      end
      def delete_order_shipment(order_id, id) do
        unquote(Bigcommerce.Client.Order).delete_order_shipment(conf(), order_id, id)
      end
      def count_order_shipments(order_id) do
        unquote(Bigcommerce.Client.Order).count_order_shipments(conf(), order_id)
      end
      def get_payment_methods(params) do
        unquote(Bigcommerce.Client.Payment).get_payment_methods(conf(), params)
      end
      def get_products(params) do
        unquote(Bigcommerce.Client.Product).get_products(conf(), params)
      end
      def get_product(id) do
        unquote(Bigcommerce.Client.Product).get_product(conf(), id)
      end
      def create_product(params) do
        unquote(Bigcommerce.Client.Product).create_product(conf(), params)
      end
      def update_product(id, params) do
        unquote(Bigcommerce.Client.Product).update_product(conf(), id, params)
      end
      def delete_product(id) do
        unquote(Bigcommerce.Client.Product).delete_product(conf(), id)
      end
      def count_products do
        unquote(Bigcommerce.Client.Product).count_products(conf())
      end
      def get_product_skus(product_id, params) do
        unquote(Bigcommerce.Client.Product).get_product_skus(conf(), product_id, params)
      end
      def get_product_sku(product_id, id) do
        unquote(Bigcommerce.Client.Product).get_product_sku(conf(), product_id, id)
      end
      def create_product_sku(product_id, params) do
        unquote(Bigcommerce.Client.Product).create_product_sku(conf(), product_id, params)
      end
      def update_product_sku(product_id, id, params) do
        unquote(Bigcommerce.Client.Product).update_product_sku(conf(), product_id, id, params)
      end
      def delete_product_sku(product_id, id) do
        unquote(Bigcommerce.Client.Product).delete_product_sku(conf(), product_id, id)
      end
      def count_all_product_skus do
        unquote(Bigcommerce.Client.Product).count_all_product_skus(conf())
      end
      def get_product_videos(product_id, params) do
        unquote(Bigcommerce.Client.Product).get_product_videos(conf(), product_id, params)
      end
      def get_product_video(product_id, id) do
        unquote(Bigcommerce.Client.Product).get_product_video(conf(), product_id, id)
      end
      def create_product_video(product_id, params) do
        unquote(Bigcommerce.Client.Product).create_product_video(conf(), product_id, params)
      end
      def update_product_video(product_id, id, params) do
        unquote(Bigcommerce.Client.Product).update_product_video(conf(), product_id, id, params)
      end
      def delete_product_video(product_id, id) do
        unquote(Bigcommerce.Client.Product).delete_product_video(conf(), product_id, id)
      end
      def count_all_product_videos do
        unquote(Bigcommerce.Client.Product).count_all_product_videos(conf())
      end
      def get_product_rules(product_id, params) do
        unquote(Bigcommerce.Client.Product).get_product_rules(conf(), product_id, params)
      end
      def get_product_rule(product_id, id) do
        unquote(Bigcommerce.Client.Product).get_product_rule(conf(), product_id, id)
      end
      def create_product_rule(product_id, params) do
        unquote(Bigcommerce.Client.Product).create_product_rule(conf(), product_id, params)
      end
      def update_product_rule(product_id, id, params) do
        unquote(Bigcommerce.Client.Product).update_product_rule(conf(), product_id, id, params)
      end
      def delete_product_rule(product_id, id) do
        unquote(Bigcommerce.Client.Product).delete_product_rule(conf(), product_id, id)
      end
      def count_all_product_rules do
        unquote(Bigcommerce.Client.Product).count_all_product_rules(conf())
      end
      def get_product_reviews(product_id, params) do
        unquote(Bigcommerce.Client.Product).get_product_reviews(conf(), product_id, params)
      end
      def get_product_options(product_id, params) do
        unquote(Bigcommerce.Client.Product).get_product_options(conf(), product_id, params)
      end
      def get_product_option(product_id, id) do
        unquote(Bigcommerce.Client.Product).get_product_option(conf(), product_id, id)
      end
      def get_product_images(product_id, params) do
        unquote(Bigcommerce.Client.Product).get_product_images(conf(), product_id, params)
      end
      def get_product_image(product_id, id) do
        unquote(Bigcommerce.Client.Product).get_product_image(conf(), product_id, id)
      end
      def create_product_image(product_id, params) do
        unquote(Bigcommerce.Client.Product).create_product_image(conf(), product_id, params)
      end
      def update_product_image(product_id, id, params) do
        unquote(Bigcommerce.Client.Product).update_product_image(conf(), product_id, id, params)
      end
      def delete_product_image(product_id, id) do
        unquote(Bigcommerce.Client.Product).delete_product_image(conf(), product_id, id)
      end
      def count_all_product_images do
        unquote(Bigcommerce.Client.Product).count_all_product_images(conf())
      end
      def get_option_values(option_id, params) do
        unquote(Bigcommerce.Client.Product).get_option_values(conf(), option_id, params)
      end
      def get_option_value(option_id, id) do
        unquote(Bigcommerce.Client.Product).get_option_value(conf(), option_id, id)
      end
      def create_option_value(option_id, params) do
        unquote(Bigcommerce.Client.Product).create_option_value(conf(), option_id, params)
      end
      def update_option_value(option_id, id, params) do
        unquote(Bigcommerce.Client.Product).update_option_value(conf(), option_id, id, params)
      end
      def delete_option_value(option_id, id) do
        unquote(Bigcommerce.Client.Product).delete_option_value(conf(), option_id, id)
      end
      def count_all_option_values do
        unquote(Bigcommerce.Client.Product).count_all_option_values(conf())
      end
      def get_option_set_options(option_set_id, params) do
        unquote(Bigcommerce.Client.Product).get_option_set_options(conf(), option_set_id, params)
      end
      def get_option_set_option(option_set_id, id) do
        unquote(Bigcommerce.Client.Product).get_option_set_option(conf(), option_set_id, id)
      end
      def create_option_set_option(option_set_id, params) do
        unquote(Bigcommerce.Client.Product).create_option_set_option(conf(), option_set_id, params)
      end
      def update_option_set_option(option_set_id, id, params) do
        unquote(Bigcommerce.Client.Product).update_option_set_option(conf(), option_set_id, id, params)
      end
      def delete_option_set_option(option_set_id, id) do
        unquote(Bigcommerce.Client.Product).delete_option_set_option(conf(), option_set_id, id)
      end
      def get_option_sets(params) do
        unquote(Bigcommerce.Client.Product).get_option_sets(conf(), params)
      end
      def get_option_set(id) do
        unquote(Bigcommerce.Client.Product).get_option_set(conf(), id)
      end
      def create_option_set(params) do
        unquote(Bigcommerce.Client.Product).create_option_set(conf(), params)
      end
      def update_option_set(id, params) do
        unquote(Bigcommerce.Client.Product).update_option_set(conf(), id, params)
      end
      def delete_option_set(id) do
        unquote(Bigcommerce.Client.Product).delete_option_set(conf(), id)
      end
      def count_option_sets do
        unquote(Bigcommerce.Client.Product).count_option_sets(conf())
      end
      def get_options(params) do
        unquote(Bigcommerce.Client.Product).get_options(conf(), params)
      end
      def get_option(id) do
        unquote(Bigcommerce.Client.Product).get_option(conf(), id)
      end
      def create_option(params) do
        unquote(Bigcommerce.Client.Product).create_option(conf(), params)
      end
      def update_option(id, params) do
        unquote(Bigcommerce.Client.Product).update_option(conf(), id, params)
      end
      def delete_option(id) do
        unquote(Bigcommerce.Client.Product).delete_option(conf(), id)
      end
      def count_options do
        unquote(Bigcommerce.Client.Product).count_options(conf())
      end
      def get_google_product_search_map(product_id, params) do
        unquote(Bigcommerce.Client.Product).get_google_product_search_map(conf(), product_id, params)
      end
      def get_product_custom_fields(product_id, params) do
        unquote(Bigcommerce.Client.Product).get_product_custom_fields(conf(), product_id, params)
      end
      def get_product_custom_field(product_id, id) do
        unquote(Bigcommerce.Client.Product).get_product_custom_field(conf(), product_id, id)
      end
      def create_product_custom_field(product_id, params) do
        unquote(Bigcommerce.Client.Product).create_product_custom_field(conf(), product_id, params)
      end
      def update_product_custom_field(product_id, id, params) do
        unquote(Bigcommerce.Client.Product).update_product_custom_field(conf(), product_id, id, params)
      end
      def delete_product_custom_field(product_id, id) do
        unquote(Bigcommerce.Client.Product).delete_product_custom_field(conf(), product_id, id)
      end
      def count_all_product_custom_fields do
        unquote(Bigcommerce.Client.Product).count_all_product_custom_fields(conf())
      end
      def get_product_configurable_fields(product_id, params) do
        unquote(Bigcommerce.Client.Product).get_product_configurable_fields(conf(), product_id, params)
      end
      def get_product_configurable_field(product_id, id) do
        unquote(Bigcommerce.Client.Product).get_product_configurable_field(conf(), product_id, id)
      end
      def delete_product_configurable_field(product_id, id) do
        unquote(Bigcommerce.Client.Product).delete_product_configurable_field(conf(), product_id, id)
      end
      def count_all_product_configurable_fields do
        unquote(Bigcommerce.Client.Product).count_all_product_configurable_fields(conf())
      end
      def get_categories(params) do
        unquote(Bigcommerce.Client.Product).get_categories(conf(), params)
      end
      def get_category(id) do
        unquote(Bigcommerce.Client.Product).get_category(conf(), id)
      end
      def create_category(params) do
        unquote(Bigcommerce.Client.Product).create_category(conf(), params)
      end
      def update_category(id, params) do
        unquote(Bigcommerce.Client.Product).update_category(conf(), id, params)
      end
      def delete_category(id) do
        unquote(Bigcommerce.Client.Product).delete_category(conf(), id)
      end
      def count_categories do
        unquote(Bigcommerce.Client.Product).count_categories(conf())
      end
      def get_product_discount_rules(product_id, params) do
        unquote(Bigcommerce.Client.Product).get_product_discount_rules(conf(), product_id, params)
      end
      def get_product_discount_rule(product_id, id) do
        unquote(Bigcommerce.Client.Product).get_product_discount_rule(conf(), product_id, id)
      end
      def create_product_discount_rule(product_id, params) do
        unquote(Bigcommerce.Client.Product).create_product_discount_rule(conf(), product_id, params)
      end
      def update_product_discount_rule(product_id, id, params) do
        unquote(Bigcommerce.Client.Product).update_product_discount_rule(conf(), product_id, id, params)
      end
      def delete_product_discount_rule(product_id, id) do
        unquote(Bigcommerce.Client.Product).delete_product_discount_rule(conf(), product_id, id)
      end
      def count_all_product_discount_rules do
        unquote(Bigcommerce.Client.Product).count_all_product_discount_rules(conf())
      end
      def get_brands(params) do
        unquote(Bigcommerce.Client.Product).get_brands(conf(), params)
      end
      def get_brand(id) do
        unquote(Bigcommerce.Client.Product).get_brand(conf(), id)
      end
      def create_brand(params) do
        unquote(Bigcommerce.Client.Product).create_brand(conf(), params)
      end
      def update_brand(id, params) do
        unquote(Bigcommerce.Client.Product).update_brand(conf(), id, params)
      end
      def delete_brand(id) do
        unquote(Bigcommerce.Client.Product).delete_brand(conf(), id)
      end
      def count_brands do
        unquote(Bigcommerce.Client.Product).count_brands(conf())
      end
      def get_shipping_methods(params) do
        unquote(Bigcommerce.Client.Shipping).get_shipping_methods(conf(), params)
      end
      def get_shipping_method(id) do
        unquote(Bigcommerce.Client.Shipping).get_shipping_method(conf(), id)
      end
      def get_store_info do
        unquote(Bigcommerce.Client.Store).get_store_info(conf(), params)
      end
      def get_time do
        unquote(Bigcommerce.Client.System).get_time(conf(), params)
      end
    end
  end
end


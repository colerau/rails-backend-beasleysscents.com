require 'square'
require 'securerandom'

class CheckoutController < ApplicationController
  def checkout
    client = Square::Client.new(
    access_token: ENV['API_ACCESS_TOKEN'],
    environment: 'sandbox')

    result = client.checkout.create_checkout(
    location_id: ENV['LOCATION_ID'],
    body: {
      idempotency_key: SecureRandom.uuid,
      order: {},
      ask_for_shipping_address: true
    })

    if result.success?
      puts result.data
      binding.pry
    elsif result.error?
      warn result.errors
      binding.pry
    end
  end


  private

  def checkout_params
    params.require(:checkout).permit(:category, :type)
  end
end
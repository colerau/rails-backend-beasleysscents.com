Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/checkout", to: "checkout#checkout"

  post "/add-to-cart", to: "carts#add_to_cart"
end

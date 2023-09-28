# frozen_string_literal: true

namespace :api do
  namespace :v1 do
    resources :tops, only: :index
  end
end

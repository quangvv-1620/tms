# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "admin-lte", preload: true # @3.2.0
pin "jquery", preload: true # @3.7.1
pin "daterangepicker" # @3.1.0
pin "moment" # @2.29.4

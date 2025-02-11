# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap
#
# pin "application", preload: true
# pin "react" # @18.3.1
# pin "react-dom" # @18.3.1
# pin "scheduler" # @0.23.2
# pin "react-dom/client", to: "react-dom--client.js" # @18.3.1
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

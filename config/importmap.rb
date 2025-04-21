# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "tw-animate-css" # @1.2.5
pin "@tailwindcss/forms", to: "@tailwindcss--forms.js" # @0.5.10
pin "mini-svg-data-uri" # @1.4.4
pin "tailwindcss/colors", to: "tailwindcss--colors.js" # @4.1.4
pin "tailwindcss/defaultTheme", to: "tailwindcss--defaultTheme.js" # @4.1.4
pin "tailwindcss/plugin", to: "tailwindcss--plugin.js" # @4.1.4
pin "@tailwindcss/typography", to: "@tailwindcss--typography.js" # @0.5.16
pin "cssesc" # @3.0.0
pin "lodash.castarray" # @4.4.0
pin "lodash.isplainobject" # @4.0.6
pin "lodash.merge" # @4.6.2
pin "postcss-selector-parser" # @6.0.10
pin "util-deprecate" # @1.0.2
pin "mustache" # @4.2.0
pin "embla-carousel" # @8.6.0
pin "@stimulus-components/notification", to: "@stimulus-components--notification.js" # @3.0.0
pin "stimulus-use" # @0.52.3

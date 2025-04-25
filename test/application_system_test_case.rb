require "test_helper"
require "capybara-playwright-driver"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :playwright, screen_size: [ 1400, 1400 ]
end

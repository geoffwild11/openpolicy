require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,          "Open Policy Online"
    assert_equal full_title("Help"),  "Help | Open Policy Online"
  end
end

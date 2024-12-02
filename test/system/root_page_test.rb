require 'application_system_test_case'

class RootpageTest < ApplicationSystemTestCase
  test "visit home page" do
    visit root_path
    assert_selector "h1", text: "Articles"
  end
end

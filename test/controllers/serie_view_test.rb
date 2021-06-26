require "application_system_test_case"

class SerieViewTest < ApplicationSystemTestCase
  test "test if the title is correct" do
    assert_select "h1", "The Big Bang Theory"
  end
end


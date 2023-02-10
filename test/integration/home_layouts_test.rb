require "test_helper"

class HomeLayoutsTest < ActionDispatch::IntegrationTest
  test "proper layout links" do
    get root_path
    assert_select "a[href=?]", root_path, count: 3
    assert_select "nav" do
      assert_select "a[href=?]", root_path, count: 1
      assert_select "a[href=?]", new_daily_workout_path, count: 1
      assert_select "a[href=?]", new_lift_path, count: 1
    end
  end
end

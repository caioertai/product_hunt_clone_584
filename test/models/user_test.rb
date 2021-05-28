require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "#full_name returns a concatenation of both names" do
    # Setup
    user = User.new(first_name: "John", last_name: "Doe")

    # Exercise
    user_full_name = user.full_name

    # Verify
    assert_equal "John Doe", user_full_name
    # Teardown
    # ...
  end

  test "#full_name returns just last_name if no first name is present" do
    # Setup
    user = User.new(last_name: "Doe")

    # Exercise
    user_full_name = user.full_name

    # Verify
    assert_equal "Doe", user_full_name
    # Teardown
    # ...
  end
end

require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    # Exercise
    visit root_url # "/"

    # Verify
    assert_selector "h1", text: "Awesome Products"
  end

  test "add a new product" do
    login_as users(:mr_a)
    visit "/"

    click_on "Add Product"

    # binding.pry

    fill_in "Name", with: "Hello World"
    fill_in "Tagline", with: "Wahhaaaahahaha!"
    click_on "Create Product" #

    assert_equal "/", page.current_path
    assert_text "Hello World"
    assert_text "Wahhaaaahahaha!"
  end
end

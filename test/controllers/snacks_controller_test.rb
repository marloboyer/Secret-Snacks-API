require "test_helper"

class SnacksControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/snacks.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Snack.count, data.length
  end

  test "create" do
    assert_difference "Snack.count", 1 do
      post "/snacks.json", params: { name: "BLT Sandwich Chips", brand: "Lays", user_id: 1, snack_image: "" }
      assert_response 200
    end
  end
end

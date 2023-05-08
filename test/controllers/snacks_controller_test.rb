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
      post "/snacks.json", params: { name: "BLT Sandwich Chips", brand: "Lays", user_id: User.first.id, snack_image: "" }
      assert_response 200
    end
  end

  test "show" do
    get "/snacks/#{Snack.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "brand", "user_id", "created_at", "updated_at", "snack_image"], data.keys
  end

  test "update" do
    snack = Snack.first
    patch "/snacks/#{snack.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end

  test "destroy" do
    assert_difference "Snack.count", -1 do
      delete "/snacks/#{Snack.first.id}.json"
      assert_response 200
    end
  end
end

require "test_helper"

class LocationsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/locations.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Location.count, data.length
  end

  test "create" do
    assert_difference "Location.count", 1 do
      post "/locations.json", params: { name: 7 - 11, snack_id: Snack.first.id, address: "593 Wild Way, Dallas, TX" }
      assert_response 200
    end
  end

  test "show" do
    get "/locations/#{Location.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "snack_id", "address", "created_at", "updated_at"], data.keys
  end

  test "update" do
    location = Location.first
    patch "/locations/#{location.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end

  test "destroy" do
    assert_difference "Location.count", -1 do
      delete "/locations/#{Location.first.id}.json"
      assert_response 200
    end
  end
end

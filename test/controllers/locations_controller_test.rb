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
      post "/locations.json", params: { name: 7 - 11, snack_id: 1, address: "593 Wild Way, Dallas, TX" }
      assert_response 200
    end
  end
end

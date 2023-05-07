require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/reviews.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Review.count, data.length
  end

  test "create" do
    assert_difference "Review.count", 1 do
      post "/reviews.json", params: { snack_id: 1, user_id: 1, note: "Tasted just like a BLT sandwich", snack_rate: 4 }
      assert_response 200
    end
  end

  test "show" do
    get "/reviews/#{Review.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "snack_id", "user_id", "note", "snack_rate","created_at", "updated_at"], data.keys
  end
end

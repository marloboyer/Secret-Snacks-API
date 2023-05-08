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
      post "/reviews.json", params: { snack_id: Snack.first.id, user_id: User.first.id, note: "Tasted just like a BLT sandwich", snack_rate: 4 }
      assert_response 200
    end
  end

  test "show" do
    get "/reviews/#{Review.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "snack_id", "user_id", "note", "snack_rate", "created_at", "updated_at"], data.keys
  end

  test "update" do
    review = Review.first
    patch "/reviews/#{review.id}.json", params: { note: "Updated note" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated note", data["note"]
  end

  test "destroy" do
    assert_difference "Review.count", -1 do
      delete "/reviews/#{Review.first.id}.json"
      assert_response 200
    end
  end
end

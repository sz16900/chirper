require 'test_helper'

class ChirpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chirp = chirps(:one)
  end

  test "should get index" do
    get chirps_url
    assert_response :success
  end

  test "should get new" do
    get new_chirp_url
    assert_response :success
  end

  test "should create chirp" do
    assert_difference('Chirp.count') do
      post chirps_url, params: { chirp: { chirp: @chirp.chirp } }
    end

    assert_redirected_to chirp_url(Chirp.last)
  end

  test "should show chirp" do
    get chirp_url(@chirp)
    assert_response :success
  end

  test "should get edit" do
    get edit_chirp_url(@chirp)
    assert_response :success
  end

  test "should update chirp" do
    patch chirp_url(@chirp), params: { chirp: { chirp: @chirp.chirp } }
    assert_redirected_to chirp_url(@chirp)
  end

  test "should destroy chirp" do
    assert_difference('Chirp.count', -1) do
      delete chirp_url(@chirp)
    end

    assert_redirected_to chirps_url
  end
end

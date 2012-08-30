require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get aboutus" do
    get :aboutus
    assert_response :success
  end

  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get findingus" do
    get :findingus
    assert_response :success
  end

  test "should get gallery" do
    get :gallery
    assert_response :success
  end

  test "should get feedback" do
    get :feedback
    assert_response :success
  end

end

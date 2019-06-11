require 'test_helper'

class HelloworldpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @helloworldpost = helloworldposts(:one)
  end

  test "should get index" do
    get helloworldposts_url
    assert_response :success
  end

  test "should get new" do
    get new_helloworldpost_url
    assert_response :success
  end

  test "should create helloworldpost" do
    assert_difference('Helloworldpost.count') do
      post helloworldposts_url, params: { helloworldpost: { description: @helloworldpost.description, title: @helloworldpost.title } }
    end

    assert_redirected_to helloworldpost_url(Helloworldpost.last)
  end

  test "should show helloworldpost" do
    get helloworldpost_url(@helloworldpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_helloworldpost_url(@helloworldpost)
    assert_response :success
  end

  test "should update helloworldpost" do
    patch helloworldpost_url(@helloworldpost), params: { helloworldpost: { description: @helloworldpost.description, title: @helloworldpost.title } }
    assert_redirected_to helloworldpost_url(@helloworldpost)
  end

  test "should destroy helloworldpost" do
    assert_difference('Helloworldpost.count', -1) do
      delete helloworldpost_url(@helloworldpost)
    end

    assert_redirected_to helloworldposts_url
  end
end

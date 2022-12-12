require "test_helper"

class IbagemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ibagem = ibagems(:one)
  end

  test "should get index" do
    get ibagems_url
    assert_response :success
  end

  test "should get new" do
    get new_ibagem_url
    assert_response :success
  end

  test "should create ibagem" do
    assert_difference("Ibagem.count") do
      post ibagems_url, params: { ibagem: { description: @ibagem.description, name: @ibagem.name } }
    end

    assert_redirected_to ibagem_url(Ibagem.last)
  end

  test "should show ibagem" do
    get ibagem_url(@ibagem)
    assert_response :success
  end

  test "should get edit" do
    get edit_ibagem_url(@ibagem)
    assert_response :success
  end

  test "should update ibagem" do
    patch ibagem_url(@ibagem), params: { ibagem: { description: @ibagem.description, name: @ibagem.name } }
    assert_redirected_to ibagem_url(@ibagem)
  end

  test "should destroy ibagem" do
    assert_difference("Ibagem.count", -1) do
      delete ibagem_url(@ibagem)
    end

    assert_redirected_to ibagems_url
  end
end

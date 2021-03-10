require "test_helper"

class RessourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ressource = ressources(:one)
  end

  test "should get index" do
    get ressources_url
    assert_response :success
  end

  test "should get new" do
    get new_ressource_url
    assert_response :success
  end

  test "should create ressource" do
    assert_difference('Ressource.count') do
      post ressources_url, params: { ressource: { author_id: @ressource.author_id, description: @ressource.description, link: @ressource.link, link2: @ressource.link2, mini_description: @ressource.mini_description, title: @ressource.title } }
    end

    assert_redirected_to ressource_url(Ressource.last)
  end

  test "should show ressource" do
    get ressource_url(@ressource)
    assert_response :success
  end

  test "should get edit" do
    get edit_ressource_url(@ressource)
    assert_response :success
  end

  test "should update ressource" do
    patch ressource_url(@ressource), params: { ressource: { author_id: @ressource.author_id, description: @ressource.description, link: @ressource.link, link2: @ressource.link2, mini_description: @ressource.mini_description, title: @ressource.title } }
    assert_redirected_to ressource_url(@ressource)
  end

  test "should destroy ressource" do
    assert_difference('Ressource.count', -1) do
      delete ressource_url(@ressource)
    end

    assert_redirected_to ressources_url
  end
end

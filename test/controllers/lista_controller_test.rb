require 'test_helper'

class ListaControllerTest < ActionController::TestCase
  test "should get Clientes" do
    get :Clientes
    assert_response :success
  end

end

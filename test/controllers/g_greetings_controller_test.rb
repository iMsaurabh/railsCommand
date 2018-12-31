require 'test_helper'

class GGreetingsControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get g_greetings_hello_url
    assert_response :success
  end

end

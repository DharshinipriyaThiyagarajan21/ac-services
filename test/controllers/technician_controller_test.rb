require 'test_helper'

class TechnicianControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get technician_new_url
    assert_response :success
  end

end

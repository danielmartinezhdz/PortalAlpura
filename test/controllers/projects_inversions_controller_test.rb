require 'test_helper'

class ProjectsInversionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projects_inversion = projects_inversions(:one)
  end

  test "should get index" do
    get projects_inversions_url
    assert_response :success
  end

  test "should get new" do
    get new_projects_inversion_url
    assert_response :success
  end

  test "should create projects_inversion" do
    assert_difference('ProjectsInversion.count') do
      post projects_inversions_url, params: { projects_inversion: { project_id: @projects_inversion.project_id, quantity: @projects_inversion.quantity } }
    end

    assert_redirected_to projects_inversion_url(ProjectsInversion.last)
  end

  test "should show projects_inversion" do
    get projects_inversion_url(@projects_inversion)
    assert_response :success
  end

  test "should get edit" do
    get edit_projects_inversion_url(@projects_inversion)
    assert_response :success
  end

  test "should update projects_inversion" do
    patch projects_inversion_url(@projects_inversion), params: { projects_inversion: { project_id: @projects_inversion.project_id, quantity: @projects_inversion.quantity } }
    assert_redirected_to projects_inversion_url(@projects_inversion)
  end

  test "should destroy projects_inversion" do
    assert_difference('ProjectsInversion.count', -1) do
      delete projects_inversion_url(@projects_inversion)
    end

    assert_redirected_to projects_inversions_url
  end
end

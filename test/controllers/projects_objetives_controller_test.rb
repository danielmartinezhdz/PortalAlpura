require 'test_helper'

class ProjectsObjetivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projects_objetive = projects_objetives(:one)
  end

  test "should get index" do
    get projects_objetives_url
    assert_response :success
  end

  test "should get new" do
    get new_projects_objetive_url
    assert_response :success
  end

  test "should create projects_objetive" do
    assert_difference('ProjectsObjetive.count') do
      post projects_objetives_url, params: { projects_objetive: { name: @projects_objetive.name, project_id: @projects_objetive.project_id } }
    end

    assert_redirected_to projects_objetive_url(ProjectsObjetive.last)
  end

  test "should show projects_objetive" do
    get projects_objetive_url(@projects_objetive)
    assert_response :success
  end

  test "should get edit" do
    get edit_projects_objetive_url(@projects_objetive)
    assert_response :success
  end

  test "should update projects_objetive" do
    patch projects_objetive_url(@projects_objetive), params: { projects_objetive: { name: @projects_objetive.name, project_id: @projects_objetive.project_id } }
    assert_redirected_to projects_objetive_url(@projects_objetive)
  end

  test "should destroy projects_objetive" do
    assert_difference('ProjectsObjetive.count', -1) do
      delete projects_objetive_url(@projects_objetive)
    end

    assert_redirected_to projects_objetives_url
  end
end

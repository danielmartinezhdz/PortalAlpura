require 'test_helper'

class ProjectsBriefcasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projects_briefcase = projects_briefcases(:one)
  end

  test "should get index" do
    get projects_briefcases_url
    assert_response :success
  end

  test "should get new" do
    get new_projects_briefcase_url
    assert_response :success
  end

  test "should create projects_briefcase" do
    assert_difference('ProjectsBriefcase.count') do
      post projects_briefcases_url, params: { projects_briefcase: { name: @projects_briefcase.name, project_id: @projects_briefcase.project_id } }
    end

    assert_redirected_to projects_briefcase_url(ProjectsBriefcase.last)
  end

  test "should show projects_briefcase" do
    get projects_briefcase_url(@projects_briefcase)
    assert_response :success
  end

  test "should get edit" do
    get edit_projects_briefcase_url(@projects_briefcase)
    assert_response :success
  end

  test "should update projects_briefcase" do
    patch projects_briefcase_url(@projects_briefcase), params: { projects_briefcase: { name: @projects_briefcase.name, project_id: @projects_briefcase.project_id } }
    assert_redirected_to projects_briefcase_url(@projects_briefcase)
  end

  test "should destroy projects_briefcase" do
    assert_difference('ProjectsBriefcase.count', -1) do
      delete projects_briefcase_url(@projects_briefcase)
    end

    assert_redirected_to projects_briefcases_url
  end
end

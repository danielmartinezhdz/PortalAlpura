require 'test_helper'

class ProjectsBenefitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projects_benefit = projects_benefits(:one)
  end

  test "should get index" do
    get projects_benefits_url
    assert_response :success
  end

  test "should get new" do
    get new_projects_benefit_url
    assert_response :success
  end

  test "should create projects_benefit" do
    assert_difference('ProjectsBenefit.count') do
      post projects_benefits_url, params: { projects_benefit: { name: @projects_benefit.name, project_id: @projects_benefit.project_id } }
    end

    assert_redirected_to projects_benefit_url(ProjectsBenefit.last)
  end

  test "should show projects_benefit" do
    get projects_benefit_url(@projects_benefit)
    assert_response :success
  end

  test "should get edit" do
    get edit_projects_benefit_url(@projects_benefit)
    assert_response :success
  end

  test "should update projects_benefit" do
    patch projects_benefit_url(@projects_benefit), params: { projects_benefit: { name: @projects_benefit.name, project_id: @projects_benefit.project_id } }
    assert_redirected_to projects_benefit_url(@projects_benefit)
  end

  test "should destroy projects_benefit" do
    assert_difference('ProjectsBenefit.count', -1) do
      delete projects_benefit_url(@projects_benefit)
    end

    assert_redirected_to projects_benefits_url
  end
end

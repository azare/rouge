require 'test_helper'

class ReviewersControllerTest < ActionController::TestCase
  setup do
    @reviewer = reviewers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reviewers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reviewer" do
    assert_difference('Reviewer.count') do
      post :create, :reviewer => { :description => @reviewer.description, :name => @reviewer.name, :password => @reviewer.password, :username => @reviewer.username }
    end

    assert_redirected_to reviewer_path(assigns(:reviewer))
  end

  test "should show reviewer" do
    get :show, :id => @reviewer
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @reviewer
    assert_response :success
  end

  test "should update reviewer" do
    put :update, :id => @reviewer, :reviewer => { :description => @reviewer.description, :name => @reviewer.name, :password => @reviewer.password, :username => @reviewer.username }
    assert_redirected_to reviewer_path(assigns(:reviewer))
  end

  test "should destroy reviewer" do
    assert_difference('Reviewer.count', -1) do
      delete :destroy, :id => @reviewer
    end

    assert_redirected_to reviewers_path
  end
end

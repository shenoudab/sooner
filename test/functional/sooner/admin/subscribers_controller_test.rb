require 'test_helper'

module Sooner
  class Admin::SubscribersControllerTest < ActionController::TestCase
    setup do
      @admin_subscriber = admin_subscribers(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:admin_subscribers)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create admin_subscriber" do
      assert_difference('Admin::Subscriber.count') do
        post :create, admin_subscriber: @admin_subscriber.attributes
      end
  
      assert_redirected_to admin_subscriber_path(assigns(:admin_subscriber))
    end
  
    test "should show admin_subscriber" do
      get :show, id: @admin_subscriber.to_param
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @admin_subscriber.to_param
      assert_response :success
    end
  
    test "should update admin_subscriber" do
      put :update, id: @admin_subscriber.to_param, admin_subscriber: @admin_subscriber.attributes
      assert_redirected_to admin_subscriber_path(assigns(:admin_subscriber))
    end
  
    test "should destroy admin_subscriber" do
      assert_difference('Admin::Subscriber.count', -1) do
        delete :destroy, id: @admin_subscriber.to_param
      end
  
      assert_redirected_to admin_subscribers_path
    end
  end
end

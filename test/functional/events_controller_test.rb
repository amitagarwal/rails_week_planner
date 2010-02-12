require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Events.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Events.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Events.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to events_url(assigns(:events))
  end
  
  def test_edit
    get :edit, :id => Events.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Events.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Events.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Events.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Events.first
    assert_redirected_to events_url(assigns(:events))
  end
  
  def test_destroy
    events = Events.first
    delete :destroy, :id => events
    assert_redirected_to events_url
    assert !Events.exists?(events.id)
  end
end

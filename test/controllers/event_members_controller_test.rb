require 'test_helper'

class EventMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_member = event_members(:one)
  end

  test 'should get index' do
    get event_members_url
    assert_response :success
  end

  test 'should get new' do
    get new_event_member_url
    assert_response :success
  end

  test 'should create event_member' do
    assert_difference('EventMember.count') do
      post event_members_url, params: { event_member: { event_id: @event_member.event_id, user_id: @event_member.user_id } }
    end

    assert_redirected_to event_member_url(EventMember.last)
  end

  test 'should show event_member' do
    get event_member_url(@event_member)
    assert_response :success
  end

  test 'should get edit' do
    get edit_event_member_url(@event_member)
    assert_response :success
  end

  test 'should update event_member' do
    patch event_member_url(@event_member), params: { event_member: { event_id: @event_member.event_id, user_id: @event_member.user_id } }
    assert_redirected_to event_member_url(@event_member)
  end

  test 'should destroy event_member' do
    assert_difference('EventMember.count', -1) do
      delete event_member_url(@event_member)
    end

    assert_redirected_to event_members_url
  end
end

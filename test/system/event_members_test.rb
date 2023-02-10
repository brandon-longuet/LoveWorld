require 'application_system_test_case'

class EventMembersTest < ApplicationSystemTestCase
  setup do
    @event_member = event_members(:one)
  end

  test 'visiting the index' do
    visit event_members_url
    assert_selector 'h1', text: 'Event members'
  end

  test 'should create event member' do
    visit event_members_url
    click_on 'New event member'

    fill_in 'Event', with: @event_member.event_id
    fill_in 'User', with: @event_member.user_id
    click_on 'Create Event member'

    assert_text 'Event member was successfully created'
    click_on 'Back'
  end

  test 'should update Event member' do
    visit event_member_url(@event_member)
    click_on 'Edit this event member', match: :first

    fill_in 'Event', with: @event_member.event_id
    fill_in 'User', with: @event_member.user_id
    click_on 'Update Event member'

    assert_text 'Event member was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Event member' do
    visit event_member_url(@event_member)
    click_on 'Destroy this event member', match: :first

    assert_text 'Event member was successfully destroyed'
  end
end

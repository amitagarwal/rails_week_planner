require 'test_helper'

class EventsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Events.new.valid?
  end
end

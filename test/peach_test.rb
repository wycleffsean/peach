require "test_helper"

class PeachTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Peach::VERSION
  end

  def test_enum_for_returns_enumerator
    assert Peach.enum_for(0..5).kind_of? Enumerator
  end
end

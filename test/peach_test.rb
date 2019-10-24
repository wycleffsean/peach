require "test_helper"

class PeachTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Peach::VERSION
  end
end

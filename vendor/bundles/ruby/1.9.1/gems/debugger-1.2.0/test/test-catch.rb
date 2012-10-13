#!/usr/bin/env ruby
require 'test/unit'

# require 'ruby-debug'; Debugger.start

# Test exception catching
class TestExceptionCatch < Test::Unit::TestCase

  @@SRC_DIR = File.join(Dir.pwd, File.dirname(__FILE__)) unless
    defined?(@@SRC_DIR)

  require File.join(@@SRC_DIR, 'helper')
  include TestHelper

  def test_basic
    testname='catch'
    Dir.chdir(@@SRC_DIR) do
      script = File.join('data', testname + '.cmd')
      assert_equal(true,
                   run_debugger(testname,
                                "--script #{script} -- ./pm-catch.rb"))
    end
  end
end

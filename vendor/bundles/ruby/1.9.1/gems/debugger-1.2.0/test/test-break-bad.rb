#!/usr/bin/env ruby
require 'test/unit'

# require 'ruby-debug'; Debugger.start

# Test (mostly) invalid breakpoint commands
class TestBadBreak < Test::Unit::TestCase

  @@SRC_DIR = File.join(Dir.pwd, File.dirname(__FILE__)) unless
    defined?(@@SRC_DIR)

  require File.join(@@SRC_DIR, 'helper')
  include TestHelper

  def test_basic
    testname='break_bad'
    Dir.chdir(@@SRC_DIR) do
      script = File.join('data', testname + '.cmd')
      assert_equal(true,
                   run_debugger(testname,
                                "--script #{script} -- ./gcd.rb 3 5"))
    end
  end

  def test_break_loop
    testname='break_loop_bug'
    Dir.chdir(@@SRC_DIR) do
      script = File.join('data', testname + '.cmd')
# FIXME: Issue #1
#      assert_equal(true,
#        run_debugger(testname,
#          "--script #{script} -- ./bp_loop_issue.rb"))
    end
  end

end

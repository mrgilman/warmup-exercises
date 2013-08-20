require 'minitest/autorun'
require 'minitest/pride'

ENV["RUBY_ENV"] = "test"

require './robot'

class RobotTest < MiniTest::Unit::TestCase

  def test_can_create_robots
    robot = Robot.new
    assert_kind_of Robot, robot
  end

  def test_robot_has_name
    robot = Robot.new
    assert robot.name
  end

  def test_robots_have_different_names
    robot1 = Robot.new
    robot2 = Robot.new
    assert robot1.name != robot2.name
  end

  def test_reset_should_change_name
    robot = Robot.new
    old_name = robot.name
    robot.reset
    new_name = robot.name
    assert old_name != new_name
  end

  def test_format_of_name
    robot = Robot.new
    assert_match /^[A-Z]{2}\d{3}$/, robot.name
  end

  def test_has_unique_mac_address
    robot_1 = Robot.new
    robot_2 = Robot.new
    assert robot_1.mac_address != robot_2.mac_address
  end

  def test_mac_address_should_remain_the_same_after_rest
    robot_1 = Robot.new
    old_mac_address = robot_1.mac_address
    robot_1.reset
    new_mac_address = robot_1.mac_address
    assert_equal old_mac_address, new_mac_address
  end

end

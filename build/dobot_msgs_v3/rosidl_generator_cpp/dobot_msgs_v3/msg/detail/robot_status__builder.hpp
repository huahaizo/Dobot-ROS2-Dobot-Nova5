// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:msg/RobotStatus.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__MSG__DETAIL__ROBOT_STATUS__BUILDER_HPP_
#define DOBOT_MSGS_V3__MSG__DETAIL__ROBOT_STATUS__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/msg/detail/robot_status__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace msg
{

namespace builder
{

class Init_RobotStatus_is_connected
{
public:
  explicit Init_RobotStatus_is_connected(::dobot_msgs_v3::msg::RobotStatus & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::msg::RobotStatus is_connected(::dobot_msgs_v3::msg::RobotStatus::_is_connected_type arg)
  {
    msg_.is_connected = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::msg::RobotStatus msg_;
};

class Init_RobotStatus_is_enable
{
public:
  Init_RobotStatus_is_enable()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_RobotStatus_is_connected is_enable(::dobot_msgs_v3::msg::RobotStatus::_is_enable_type arg)
  {
    msg_.is_enable = std::move(arg);
    return Init_RobotStatus_is_connected(msg_);
  }

private:
  ::dobot_msgs_v3::msg::RobotStatus msg_;
};

}  // namespace builder

}  // namespace msg

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::msg::RobotStatus>()
{
  return dobot_msgs_v3::msg::builder::Init_RobotStatus_is_enable();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__MSG__DETAIL__ROBOT_STATUS__BUILDER_HPP_

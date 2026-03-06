// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/RobotMode.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__ROBOT_MODE__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__ROBOT_MODE__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/robot_mode__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{


}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::RobotMode_Request>()
{
  return ::dobot_msgs_v3::srv::RobotMode_Request(rosidl_runtime_cpp::MessageInitialization::ZERO);
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_RobotMode_Response_res
{
public:
  explicit Init_RobotMode_Response_res(::dobot_msgs_v3::srv::RobotMode_Response & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::srv::RobotMode_Response res(::dobot_msgs_v3::srv::RobotMode_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::RobotMode_Response msg_;
};

class Init_RobotMode_Response_mode
{
public:
  Init_RobotMode_Response_mode()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_RobotMode_Response_res mode(::dobot_msgs_v3::srv::RobotMode_Response::_mode_type arg)
  {
    msg_.mode = std::move(arg);
    return Init_RobotMode_Response_res(msg_);
  }

private:
  ::dobot_msgs_v3::srv::RobotMode_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::RobotMode_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_RobotMode_Response_mode();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__ROBOT_MODE__BUILDER_HPP_

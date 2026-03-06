// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/EnableRobot.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__ENABLE_ROBOT__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__ENABLE_ROBOT__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/enable_robot__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_EnableRobot_Request_load
{
public:
  Init_EnableRobot_Request_load()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::EnableRobot_Request load(::dobot_msgs_v3::srv::EnableRobot_Request::_load_type arg)
  {
    msg_.load = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::EnableRobot_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::EnableRobot_Request>()
{
  return dobot_msgs_v3::srv::builder::Init_EnableRobot_Request_load();
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_EnableRobot_Response_res
{
public:
  Init_EnableRobot_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::EnableRobot_Response res(::dobot_msgs_v3::srv::EnableRobot_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::EnableRobot_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::EnableRobot_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_EnableRobot_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__ENABLE_ROBOT__BUILDER_HPP_

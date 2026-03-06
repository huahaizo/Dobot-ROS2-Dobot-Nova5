// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/SpeedFactor.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__SPEED_FACTOR__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__SPEED_FACTOR__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/speed_factor__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_SpeedFactor_Request_ratio
{
public:
  Init_SpeedFactor_Request_ratio()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::SpeedFactor_Request ratio(::dobot_msgs_v3::srv::SpeedFactor_Request::_ratio_type arg)
  {
    msg_.ratio = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::SpeedFactor_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::SpeedFactor_Request>()
{
  return dobot_msgs_v3::srv::builder::Init_SpeedFactor_Request_ratio();
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_SpeedFactor_Response_res
{
public:
  Init_SpeedFactor_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::SpeedFactor_Response res(::dobot_msgs_v3::srv::SpeedFactor_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::SpeedFactor_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::SpeedFactor_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_SpeedFactor_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__SPEED_FACTOR__BUILDER_HPP_

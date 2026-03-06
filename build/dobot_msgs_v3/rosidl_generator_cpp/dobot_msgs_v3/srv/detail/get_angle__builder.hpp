// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/GetAngle.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__GET_ANGLE__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__GET_ANGLE__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/get_angle__struct.hpp"
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
auto build<::dobot_msgs_v3::srv::GetAngle_Request>()
{
  return ::dobot_msgs_v3::srv::GetAngle_Request(rosidl_runtime_cpp::MessageInitialization::ZERO);
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_GetAngle_Response_angle
{
public:
  explicit Init_GetAngle_Response_angle(::dobot_msgs_v3::srv::GetAngle_Response & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::srv::GetAngle_Response angle(::dobot_msgs_v3::srv::GetAngle_Response::_angle_type arg)
  {
    msg_.angle = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::GetAngle_Response msg_;
};

class Init_GetAngle_Response_res
{
public:
  Init_GetAngle_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_GetAngle_Response_angle res(::dobot_msgs_v3::srv::GetAngle_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return Init_GetAngle_Response_angle(msg_);
  }

private:
  ::dobot_msgs_v3::srv::GetAngle_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::GetAngle_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_GetAngle_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__GET_ANGLE__BUILDER_HPP_

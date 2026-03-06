// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/SetCollisionLevel.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__SET_COLLISION_LEVEL__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__SET_COLLISION_LEVEL__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/set_collision_level__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_SetCollisionLevel_Request_level
{
public:
  Init_SetCollisionLevel_Request_level()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::SetCollisionLevel_Request level(::dobot_msgs_v3::srv::SetCollisionLevel_Request::_level_type arg)
  {
    msg_.level = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::SetCollisionLevel_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::SetCollisionLevel_Request>()
{
  return dobot_msgs_v3::srv::builder::Init_SetCollisionLevel_Request_level();
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_SetCollisionLevel_Response_res
{
public:
  Init_SetCollisionLevel_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::SetCollisionLevel_Response res(::dobot_msgs_v3::srv::SetCollisionLevel_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::SetCollisionLevel_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::SetCollisionLevel_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_SetCollisionLevel_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__SET_COLLISION_LEVEL__BUILDER_HPP_

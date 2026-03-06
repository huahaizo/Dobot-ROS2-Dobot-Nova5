// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/MovJExt.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__MOV_J_EXT__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__MOV_J_EXT__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/mov_j_ext__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_MovJExt_Request_param_value
{
public:
  explicit Init_MovJExt_Request_param_value(::dobot_msgs_v3::srv::MovJExt_Request & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::srv::MovJExt_Request param_value(::dobot_msgs_v3::srv::MovJExt_Request::_param_value_type arg)
  {
    msg_.param_value = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::MovJExt_Request msg_;
};

class Init_MovJExt_Request_offset
{
public:
  Init_MovJExt_Request_offset()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_MovJExt_Request_param_value offset(::dobot_msgs_v3::srv::MovJExt_Request::_offset_type arg)
  {
    msg_.offset = std::move(arg);
    return Init_MovJExt_Request_param_value(msg_);
  }

private:
  ::dobot_msgs_v3::srv::MovJExt_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::MovJExt_Request>()
{
  return dobot_msgs_v3::srv::builder::Init_MovJExt_Request_offset();
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_MovJExt_Response_res
{
public:
  Init_MovJExt_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::MovJExt_Response res(::dobot_msgs_v3::srv::MovJExt_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::MovJExt_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::MovJExt_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_MovJExt_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__MOV_J_EXT__BUILDER_HPP_

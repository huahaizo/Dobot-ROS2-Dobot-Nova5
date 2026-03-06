// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/MoveJog.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__MOVE_JOG__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__MOVE_JOG__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/move_jog__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_MoveJog_Request_param_value
{
public:
  explicit Init_MoveJog_Request_param_value(::dobot_msgs_v3::srv::MoveJog_Request & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::srv::MoveJog_Request param_value(::dobot_msgs_v3::srv::MoveJog_Request::_param_value_type arg)
  {
    msg_.param_value = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::MoveJog_Request msg_;
};

class Init_MoveJog_Request_axis_id
{
public:
  Init_MoveJog_Request_axis_id()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_MoveJog_Request_param_value axis_id(::dobot_msgs_v3::srv::MoveJog_Request::_axis_id_type arg)
  {
    msg_.axis_id = std::move(arg);
    return Init_MoveJog_Request_param_value(msg_);
  }

private:
  ::dobot_msgs_v3::srv::MoveJog_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::MoveJog_Request>()
{
  return dobot_msgs_v3::srv::builder::Init_MoveJog_Request_axis_id();
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_MoveJog_Response_res
{
public:
  Init_MoveJog_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::MoveJog_Response res(::dobot_msgs_v3::srv::MoveJog_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::MoveJog_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::MoveJog_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_MoveJog_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__MOVE_JOG__BUILDER_HPP_

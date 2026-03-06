// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/StartTrace.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__START_TRACE__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__START_TRACE__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/start_trace__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_StartTrace_Request_trace_name
{
public:
  Init_StartTrace_Request_trace_name()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::StartTrace_Request trace_name(::dobot_msgs_v3::srv::StartTrace_Request::_trace_name_type arg)
  {
    msg_.trace_name = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::StartTrace_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::StartTrace_Request>()
{
  return dobot_msgs_v3::srv::builder::Init_StartTrace_Request_trace_name();
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_StartTrace_Response_res
{
public:
  Init_StartTrace_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::StartTrace_Response res(::dobot_msgs_v3::srv::StartTrace_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::StartTrace_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::StartTrace_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_StartTrace_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__START_TRACE__BUILDER_HPP_

// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/ToolDOExecute.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__TOOL_DO_EXECUTE__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__TOOL_DO_EXECUTE__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/tool_do_execute__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_ToolDOExecute_Request_status
{
public:
  explicit Init_ToolDOExecute_Request_status(::dobot_msgs_v3::srv::ToolDOExecute_Request & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::srv::ToolDOExecute_Request status(::dobot_msgs_v3::srv::ToolDOExecute_Request::_status_type arg)
  {
    msg_.status = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ToolDOExecute_Request msg_;
};

class Init_ToolDOExecute_Request_index
{
public:
  Init_ToolDOExecute_Request_index()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_ToolDOExecute_Request_status index(::dobot_msgs_v3::srv::ToolDOExecute_Request::_index_type arg)
  {
    msg_.index = std::move(arg);
    return Init_ToolDOExecute_Request_status(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ToolDOExecute_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::ToolDOExecute_Request>()
{
  return dobot_msgs_v3::srv::builder::Init_ToolDOExecute_Request_index();
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_ToolDOExecute_Response_res
{
public:
  Init_ToolDOExecute_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::ToolDOExecute_Response res(::dobot_msgs_v3::srv::ToolDOExecute_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ToolDOExecute_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::ToolDOExecute_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_ToolDOExecute_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__TOOL_DO_EXECUTE__BUILDER_HPP_

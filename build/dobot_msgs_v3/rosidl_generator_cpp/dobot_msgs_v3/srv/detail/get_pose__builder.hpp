// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/GetPose.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__GET_POSE__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__GET_POSE__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/get_pose__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_GetPose_Request_tool
{
public:
  explicit Init_GetPose_Request_tool(::dobot_msgs_v3::srv::GetPose_Request & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::srv::GetPose_Request tool(::dobot_msgs_v3::srv::GetPose_Request::_tool_type arg)
  {
    msg_.tool = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::GetPose_Request msg_;
};

class Init_GetPose_Request_user
{
public:
  Init_GetPose_Request_user()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_GetPose_Request_tool user(::dobot_msgs_v3::srv::GetPose_Request::_user_type arg)
  {
    msg_.user = std::move(arg);
    return Init_GetPose_Request_tool(msg_);
  }

private:
  ::dobot_msgs_v3::srv::GetPose_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::GetPose_Request>()
{
  return dobot_msgs_v3::srv::builder::Init_GetPose_Request_user();
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_GetPose_Response_pose
{
public:
  explicit Init_GetPose_Response_pose(::dobot_msgs_v3::srv::GetPose_Response & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::srv::GetPose_Response pose(::dobot_msgs_v3::srv::GetPose_Response::_pose_type arg)
  {
    msg_.pose = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::GetPose_Response msg_;
};

class Init_GetPose_Response_res
{
public:
  Init_GetPose_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_GetPose_Response_pose res(::dobot_msgs_v3::srv::GetPose_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return Init_GetPose_Response_pose(msg_);
  }

private:
  ::dobot_msgs_v3::srv::GetPose_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::GetPose_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_GetPose_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__GET_POSE__BUILDER_HPP_

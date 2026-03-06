// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/AO.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__AO__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__AO__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/ao__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_AO_Request_status
{
public:
  explicit Init_AO_Request_status(::dobot_msgs_v3::srv::AO_Request & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::srv::AO_Request status(::dobot_msgs_v3::srv::AO_Request::_status_type arg)
  {
    msg_.status = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::AO_Request msg_;
};

class Init_AO_Request_index
{
public:
  Init_AO_Request_index()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_AO_Request_status index(::dobot_msgs_v3::srv::AO_Request::_index_type arg)
  {
    msg_.index = std::move(arg);
    return Init_AO_Request_status(msg_);
  }

private:
  ::dobot_msgs_v3::srv::AO_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::AO_Request>()
{
  return dobot_msgs_v3::srv::builder::Init_AO_Request_index();
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_AO_Response_res
{
public:
  Init_AO_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::AO_Response res(::dobot_msgs_v3::srv::AO_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::AO_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::AO_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_AO_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__AO__BUILDER_HPP_

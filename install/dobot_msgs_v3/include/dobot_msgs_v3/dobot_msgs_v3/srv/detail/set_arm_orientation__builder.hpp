// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/SetArmOrientation.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__SET_ARM_ORIENTATION__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__SET_ARM_ORIENTATION__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/set_arm_orientation__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_SetArmOrientation_Request_config6
{
public:
  explicit Init_SetArmOrientation_Request_config6(::dobot_msgs_v3::srv::SetArmOrientation_Request & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::srv::SetArmOrientation_Request config6(::dobot_msgs_v3::srv::SetArmOrientation_Request::_config6_type arg)
  {
    msg_.config6 = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::SetArmOrientation_Request msg_;
};

class Init_SetArmOrientation_Request_forn
{
public:
  explicit Init_SetArmOrientation_Request_forn(::dobot_msgs_v3::srv::SetArmOrientation_Request & msg)
  : msg_(msg)
  {}
  Init_SetArmOrientation_Request_config6 forn(::dobot_msgs_v3::srv::SetArmOrientation_Request::_forn_type arg)
  {
    msg_.forn = std::move(arg);
    return Init_SetArmOrientation_Request_config6(msg_);
  }

private:
  ::dobot_msgs_v3::srv::SetArmOrientation_Request msg_;
};

class Init_SetArmOrientation_Request_uord
{
public:
  explicit Init_SetArmOrientation_Request_uord(::dobot_msgs_v3::srv::SetArmOrientation_Request & msg)
  : msg_(msg)
  {}
  Init_SetArmOrientation_Request_forn uord(::dobot_msgs_v3::srv::SetArmOrientation_Request::_uord_type arg)
  {
    msg_.uord = std::move(arg);
    return Init_SetArmOrientation_Request_forn(msg_);
  }

private:
  ::dobot_msgs_v3::srv::SetArmOrientation_Request msg_;
};

class Init_SetArmOrientation_Request_lorr
{
public:
  Init_SetArmOrientation_Request_lorr()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_SetArmOrientation_Request_uord lorr(::dobot_msgs_v3::srv::SetArmOrientation_Request::_lorr_type arg)
  {
    msg_.lorr = std::move(arg);
    return Init_SetArmOrientation_Request_uord(msg_);
  }

private:
  ::dobot_msgs_v3::srv::SetArmOrientation_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::SetArmOrientation_Request>()
{
  return dobot_msgs_v3::srv::builder::Init_SetArmOrientation_Request_lorr();
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_SetArmOrientation_Response_res
{
public:
  Init_SetArmOrientation_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::SetArmOrientation_Response res(::dobot_msgs_v3::srv::SetArmOrientation_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::SetArmOrientation_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::SetArmOrientation_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_SetArmOrientation_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__SET_ARM_ORIENTATION__BUILDER_HPP_

// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/ServoJ.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__SERVO_J__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__SERVO_J__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/servo_j__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_ServoJ_Request_param_value
{
public:
  explicit Init_ServoJ_Request_param_value(::dobot_msgs_v3::srv::ServoJ_Request & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::srv::ServoJ_Request param_value(::dobot_msgs_v3::srv::ServoJ_Request::_param_value_type arg)
  {
    msg_.param_value = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ServoJ_Request msg_;
};

class Init_ServoJ_Request_t
{
public:
  explicit Init_ServoJ_Request_t(::dobot_msgs_v3::srv::ServoJ_Request & msg)
  : msg_(msg)
  {}
  Init_ServoJ_Request_param_value t(::dobot_msgs_v3::srv::ServoJ_Request::_t_type arg)
  {
    msg_.t = std::move(arg);
    return Init_ServoJ_Request_param_value(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ServoJ_Request msg_;
};

class Init_ServoJ_Request_j6
{
public:
  explicit Init_ServoJ_Request_j6(::dobot_msgs_v3::srv::ServoJ_Request & msg)
  : msg_(msg)
  {}
  Init_ServoJ_Request_t j6(::dobot_msgs_v3::srv::ServoJ_Request::_j6_type arg)
  {
    msg_.j6 = std::move(arg);
    return Init_ServoJ_Request_t(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ServoJ_Request msg_;
};

class Init_ServoJ_Request_j5
{
public:
  explicit Init_ServoJ_Request_j5(::dobot_msgs_v3::srv::ServoJ_Request & msg)
  : msg_(msg)
  {}
  Init_ServoJ_Request_j6 j5(::dobot_msgs_v3::srv::ServoJ_Request::_j5_type arg)
  {
    msg_.j5 = std::move(arg);
    return Init_ServoJ_Request_j6(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ServoJ_Request msg_;
};

class Init_ServoJ_Request_j4
{
public:
  explicit Init_ServoJ_Request_j4(::dobot_msgs_v3::srv::ServoJ_Request & msg)
  : msg_(msg)
  {}
  Init_ServoJ_Request_j5 j4(::dobot_msgs_v3::srv::ServoJ_Request::_j4_type arg)
  {
    msg_.j4 = std::move(arg);
    return Init_ServoJ_Request_j5(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ServoJ_Request msg_;
};

class Init_ServoJ_Request_j3
{
public:
  explicit Init_ServoJ_Request_j3(::dobot_msgs_v3::srv::ServoJ_Request & msg)
  : msg_(msg)
  {}
  Init_ServoJ_Request_j4 j3(::dobot_msgs_v3::srv::ServoJ_Request::_j3_type arg)
  {
    msg_.j3 = std::move(arg);
    return Init_ServoJ_Request_j4(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ServoJ_Request msg_;
};

class Init_ServoJ_Request_j2
{
public:
  explicit Init_ServoJ_Request_j2(::dobot_msgs_v3::srv::ServoJ_Request & msg)
  : msg_(msg)
  {}
  Init_ServoJ_Request_j3 j2(::dobot_msgs_v3::srv::ServoJ_Request::_j2_type arg)
  {
    msg_.j2 = std::move(arg);
    return Init_ServoJ_Request_j3(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ServoJ_Request msg_;
};

class Init_ServoJ_Request_j1
{
public:
  Init_ServoJ_Request_j1()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_ServoJ_Request_j2 j1(::dobot_msgs_v3::srv::ServoJ_Request::_j1_type arg)
  {
    msg_.j1 = std::move(arg);
    return Init_ServoJ_Request_j2(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ServoJ_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::ServoJ_Request>()
{
  return dobot_msgs_v3::srv::builder::Init_ServoJ_Request_j1();
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_ServoJ_Response_res
{
public:
  Init_ServoJ_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::ServoJ_Response res(::dobot_msgs_v3::srv::ServoJ_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::ServoJ_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::ServoJ_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_ServoJ_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__SERVO_J__BUILDER_HPP_

// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:srv/Arc.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__SRV__DETAIL__ARC__BUILDER_HPP_
#define DOBOT_MSGS_V3__SRV__DETAIL__ARC__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/srv/detail/arc__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_Arc_Request_param_value
{
public:
  explicit Init_Arc_Request_param_value(::dobot_msgs_v3::srv::Arc_Request & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::srv::Arc_Request param_value(::dobot_msgs_v3::srv::Arc_Request::_param_value_type arg)
  {
    msg_.param_value = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::Arc_Request msg_;
};

class Init_Arc_Request_rz2
{
public:
  explicit Init_Arc_Request_rz2(::dobot_msgs_v3::srv::Arc_Request & msg)
  : msg_(msg)
  {}
  Init_Arc_Request_param_value rz2(::dobot_msgs_v3::srv::Arc_Request::_rz2_type arg)
  {
    msg_.rz2 = std::move(arg);
    return Init_Arc_Request_param_value(msg_);
  }

private:
  ::dobot_msgs_v3::srv::Arc_Request msg_;
};

class Init_Arc_Request_ry2
{
public:
  explicit Init_Arc_Request_ry2(::dobot_msgs_v3::srv::Arc_Request & msg)
  : msg_(msg)
  {}
  Init_Arc_Request_rz2 ry2(::dobot_msgs_v3::srv::Arc_Request::_ry2_type arg)
  {
    msg_.ry2 = std::move(arg);
    return Init_Arc_Request_rz2(msg_);
  }

private:
  ::dobot_msgs_v3::srv::Arc_Request msg_;
};

class Init_Arc_Request_rx2
{
public:
  explicit Init_Arc_Request_rx2(::dobot_msgs_v3::srv::Arc_Request & msg)
  : msg_(msg)
  {}
  Init_Arc_Request_ry2 rx2(::dobot_msgs_v3::srv::Arc_Request::_rx2_type arg)
  {
    msg_.rx2 = std::move(arg);
    return Init_Arc_Request_ry2(msg_);
  }

private:
  ::dobot_msgs_v3::srv::Arc_Request msg_;
};

class Init_Arc_Request_z2
{
public:
  explicit Init_Arc_Request_z2(::dobot_msgs_v3::srv::Arc_Request & msg)
  : msg_(msg)
  {}
  Init_Arc_Request_rx2 z2(::dobot_msgs_v3::srv::Arc_Request::_z2_type arg)
  {
    msg_.z2 = std::move(arg);
    return Init_Arc_Request_rx2(msg_);
  }

private:
  ::dobot_msgs_v3::srv::Arc_Request msg_;
};

class Init_Arc_Request_y2
{
public:
  explicit Init_Arc_Request_y2(::dobot_msgs_v3::srv::Arc_Request & msg)
  : msg_(msg)
  {}
  Init_Arc_Request_z2 y2(::dobot_msgs_v3::srv::Arc_Request::_y2_type arg)
  {
    msg_.y2 = std::move(arg);
    return Init_Arc_Request_z2(msg_);
  }

private:
  ::dobot_msgs_v3::srv::Arc_Request msg_;
};

class Init_Arc_Request_x2
{
public:
  explicit Init_Arc_Request_x2(::dobot_msgs_v3::srv::Arc_Request & msg)
  : msg_(msg)
  {}
  Init_Arc_Request_y2 x2(::dobot_msgs_v3::srv::Arc_Request::_x2_type arg)
  {
    msg_.x2 = std::move(arg);
    return Init_Arc_Request_y2(msg_);
  }

private:
  ::dobot_msgs_v3::srv::Arc_Request msg_;
};

class Init_Arc_Request_rz1
{
public:
  explicit Init_Arc_Request_rz1(::dobot_msgs_v3::srv::Arc_Request & msg)
  : msg_(msg)
  {}
  Init_Arc_Request_x2 rz1(::dobot_msgs_v3::srv::Arc_Request::_rz1_type arg)
  {
    msg_.rz1 = std::move(arg);
    return Init_Arc_Request_x2(msg_);
  }

private:
  ::dobot_msgs_v3::srv::Arc_Request msg_;
};

class Init_Arc_Request_ry1
{
public:
  explicit Init_Arc_Request_ry1(::dobot_msgs_v3::srv::Arc_Request & msg)
  : msg_(msg)
  {}
  Init_Arc_Request_rz1 ry1(::dobot_msgs_v3::srv::Arc_Request::_ry1_type arg)
  {
    msg_.ry1 = std::move(arg);
    return Init_Arc_Request_rz1(msg_);
  }

private:
  ::dobot_msgs_v3::srv::Arc_Request msg_;
};

class Init_Arc_Request_rx1
{
public:
  explicit Init_Arc_Request_rx1(::dobot_msgs_v3::srv::Arc_Request & msg)
  : msg_(msg)
  {}
  Init_Arc_Request_ry1 rx1(::dobot_msgs_v3::srv::Arc_Request::_rx1_type arg)
  {
    msg_.rx1 = std::move(arg);
    return Init_Arc_Request_ry1(msg_);
  }

private:
  ::dobot_msgs_v3::srv::Arc_Request msg_;
};

class Init_Arc_Request_z1
{
public:
  explicit Init_Arc_Request_z1(::dobot_msgs_v3::srv::Arc_Request & msg)
  : msg_(msg)
  {}
  Init_Arc_Request_rx1 z1(::dobot_msgs_v3::srv::Arc_Request::_z1_type arg)
  {
    msg_.z1 = std::move(arg);
    return Init_Arc_Request_rx1(msg_);
  }

private:
  ::dobot_msgs_v3::srv::Arc_Request msg_;
};

class Init_Arc_Request_y1
{
public:
  explicit Init_Arc_Request_y1(::dobot_msgs_v3::srv::Arc_Request & msg)
  : msg_(msg)
  {}
  Init_Arc_Request_z1 y1(::dobot_msgs_v3::srv::Arc_Request::_y1_type arg)
  {
    msg_.y1 = std::move(arg);
    return Init_Arc_Request_z1(msg_);
  }

private:
  ::dobot_msgs_v3::srv::Arc_Request msg_;
};

class Init_Arc_Request_x1
{
public:
  Init_Arc_Request_x1()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_Arc_Request_y1 x1(::dobot_msgs_v3::srv::Arc_Request::_x1_type arg)
  {
    msg_.x1 = std::move(arg);
    return Init_Arc_Request_y1(msg_);
  }

private:
  ::dobot_msgs_v3::srv::Arc_Request msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::Arc_Request>()
{
  return dobot_msgs_v3::srv::builder::Init_Arc_Request_x1();
}

}  // namespace dobot_msgs_v3


namespace dobot_msgs_v3
{

namespace srv
{

namespace builder
{

class Init_Arc_Response_res
{
public:
  Init_Arc_Response_res()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::dobot_msgs_v3::srv::Arc_Response res(::dobot_msgs_v3::srv::Arc_Response::_res_type arg)
  {
    msg_.res = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::srv::Arc_Response msg_;
};

}  // namespace builder

}  // namespace srv

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::srv::Arc_Response>()
{
  return dobot_msgs_v3::srv::builder::Init_Arc_Response_res();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__SRV__DETAIL__ARC__BUILDER_HPP_

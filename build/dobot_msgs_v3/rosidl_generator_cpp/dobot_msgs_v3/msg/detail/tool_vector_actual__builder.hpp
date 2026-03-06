// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from dobot_msgs_v3:msg/ToolVectorActual.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__MSG__DETAIL__TOOL_VECTOR_ACTUAL__BUILDER_HPP_
#define DOBOT_MSGS_V3__MSG__DETAIL__TOOL_VECTOR_ACTUAL__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "dobot_msgs_v3/msg/detail/tool_vector_actual__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace dobot_msgs_v3
{

namespace msg
{

namespace builder
{

class Init_ToolVectorActual_rz
{
public:
  explicit Init_ToolVectorActual_rz(::dobot_msgs_v3::msg::ToolVectorActual & msg)
  : msg_(msg)
  {}
  ::dobot_msgs_v3::msg::ToolVectorActual rz(::dobot_msgs_v3::msg::ToolVectorActual::_rz_type arg)
  {
    msg_.rz = std::move(arg);
    return std::move(msg_);
  }

private:
  ::dobot_msgs_v3::msg::ToolVectorActual msg_;
};

class Init_ToolVectorActual_ry
{
public:
  explicit Init_ToolVectorActual_ry(::dobot_msgs_v3::msg::ToolVectorActual & msg)
  : msg_(msg)
  {}
  Init_ToolVectorActual_rz ry(::dobot_msgs_v3::msg::ToolVectorActual::_ry_type arg)
  {
    msg_.ry = std::move(arg);
    return Init_ToolVectorActual_rz(msg_);
  }

private:
  ::dobot_msgs_v3::msg::ToolVectorActual msg_;
};

class Init_ToolVectorActual_rx
{
public:
  explicit Init_ToolVectorActual_rx(::dobot_msgs_v3::msg::ToolVectorActual & msg)
  : msg_(msg)
  {}
  Init_ToolVectorActual_ry rx(::dobot_msgs_v3::msg::ToolVectorActual::_rx_type arg)
  {
    msg_.rx = std::move(arg);
    return Init_ToolVectorActual_ry(msg_);
  }

private:
  ::dobot_msgs_v3::msg::ToolVectorActual msg_;
};

class Init_ToolVectorActual_z
{
public:
  explicit Init_ToolVectorActual_z(::dobot_msgs_v3::msg::ToolVectorActual & msg)
  : msg_(msg)
  {}
  Init_ToolVectorActual_rx z(::dobot_msgs_v3::msg::ToolVectorActual::_z_type arg)
  {
    msg_.z = std::move(arg);
    return Init_ToolVectorActual_rx(msg_);
  }

private:
  ::dobot_msgs_v3::msg::ToolVectorActual msg_;
};

class Init_ToolVectorActual_y
{
public:
  explicit Init_ToolVectorActual_y(::dobot_msgs_v3::msg::ToolVectorActual & msg)
  : msg_(msg)
  {}
  Init_ToolVectorActual_z y(::dobot_msgs_v3::msg::ToolVectorActual::_y_type arg)
  {
    msg_.y = std::move(arg);
    return Init_ToolVectorActual_z(msg_);
  }

private:
  ::dobot_msgs_v3::msg::ToolVectorActual msg_;
};

class Init_ToolVectorActual_x
{
public:
  Init_ToolVectorActual_x()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_ToolVectorActual_y x(::dobot_msgs_v3::msg::ToolVectorActual::_x_type arg)
  {
    msg_.x = std::move(arg);
    return Init_ToolVectorActual_y(msg_);
  }

private:
  ::dobot_msgs_v3::msg::ToolVectorActual msg_;
};

}  // namespace builder

}  // namespace msg

template<typename MessageType>
auto build();

template<>
inline
auto build<::dobot_msgs_v3::msg::ToolVectorActual>()
{
  return dobot_msgs_v3::msg::builder::Init_ToolVectorActual_x();
}

}  // namespace dobot_msgs_v3

#endif  // DOBOT_MSGS_V3__MSG__DETAIL__TOOL_VECTOR_ACTUAL__BUILDER_HPP_

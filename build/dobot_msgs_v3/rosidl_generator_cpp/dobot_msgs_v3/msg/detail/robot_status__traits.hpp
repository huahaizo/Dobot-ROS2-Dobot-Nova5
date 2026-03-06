// generated from rosidl_generator_cpp/resource/idl__traits.hpp.em
// with input from dobot_msgs_v3:msg/RobotStatus.idl
// generated code does not contain a copyright notice

#ifndef DOBOT_MSGS_V3__MSG__DETAIL__ROBOT_STATUS__TRAITS_HPP_
#define DOBOT_MSGS_V3__MSG__DETAIL__ROBOT_STATUS__TRAITS_HPP_

#include <stdint.h>

#include <sstream>
#include <string>
#include <type_traits>

#include "dobot_msgs_v3/msg/detail/robot_status__struct.hpp"
#include "rosidl_runtime_cpp/traits.hpp"

namespace dobot_msgs_v3
{

namespace msg
{

inline void to_flow_style_yaml(
  const RobotStatus & msg,
  std::ostream & out)
{
  out << "{";
  // member: is_enable
  {
    out << "is_enable: ";
    rosidl_generator_traits::value_to_yaml(msg.is_enable, out);
    out << ", ";
  }

  // member: is_connected
  {
    out << "is_connected: ";
    rosidl_generator_traits::value_to_yaml(msg.is_connected, out);
  }
  out << "}";
}  // NOLINT(readability/fn_size)

inline void to_block_style_yaml(
  const RobotStatus & msg,
  std::ostream & out, size_t indentation = 0)
{
  // member: is_enable
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "is_enable: ";
    rosidl_generator_traits::value_to_yaml(msg.is_enable, out);
    out << "\n";
  }

  // member: is_connected
  {
    if (indentation > 0) {
      out << std::string(indentation, ' ');
    }
    out << "is_connected: ";
    rosidl_generator_traits::value_to_yaml(msg.is_connected, out);
    out << "\n";
  }
}  // NOLINT(readability/fn_size)

inline std::string to_yaml(const RobotStatus & msg, bool use_flow_style = false)
{
  std::ostringstream out;
  if (use_flow_style) {
    to_flow_style_yaml(msg, out);
  } else {
    to_block_style_yaml(msg, out);
  }
  return out.str();
}

}  // namespace msg

}  // namespace dobot_msgs_v3

namespace rosidl_generator_traits
{

[[deprecated("use dobot_msgs_v3::msg::to_block_style_yaml() instead")]]
inline void to_yaml(
  const dobot_msgs_v3::msg::RobotStatus & msg,
  std::ostream & out, size_t indentation = 0)
{
  dobot_msgs_v3::msg::to_block_style_yaml(msg, out, indentation);
}

[[deprecated("use dobot_msgs_v3::msg::to_yaml() instead")]]
inline std::string to_yaml(const dobot_msgs_v3::msg::RobotStatus & msg)
{
  return dobot_msgs_v3::msg::to_yaml(msg);
}

template<>
inline const char * data_type<dobot_msgs_v3::msg::RobotStatus>()
{
  return "dobot_msgs_v3::msg::RobotStatus";
}

template<>
inline const char * name<dobot_msgs_v3::msg::RobotStatus>()
{
  return "dobot_msgs_v3/msg/RobotStatus";
}

template<>
struct has_fixed_size<dobot_msgs_v3::msg::RobotStatus>
  : std::integral_constant<bool, true> {};

template<>
struct has_bounded_size<dobot_msgs_v3::msg::RobotStatus>
  : std::integral_constant<bool, true> {};

template<>
struct is_message<dobot_msgs_v3::msg::RobotStatus>
  : std::true_type {};

}  // namespace rosidl_generator_traits

#endif  // DOBOT_MSGS_V3__MSG__DETAIL__ROBOT_STATUS__TRAITS_HPP_
